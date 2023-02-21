/// @description Player Movement and controls are handled here
// You can write your code in this editor

// If a "block" is directly to the left of right of the player, change player state to
// "onWall"
if(place_meeting(x- move_speed - 1, y, obj_block) && keyboard_check(vk_left) || place_meeting(x+ move_speed + 1, y, obj_block) && keyboard_check(vk_right)){
	onWall = true;
} else {
	// When a wall is not to the left or right of the player, remove "onWall" state
	onWall = false;
}

//Counteract uses of hspeed for wall jumping
if hspeed > 0
{
	hspeed -= 1
}
else if hspeed < 0
{
	hspeed += 1
}

//collision with walls fix
if place_meeting(x - move_speed -1, y, obj_block) //left
{
	show_debug_message("hit left")
	x -= 1
	stopLeft = true
}
else
{
	stopLeft = false	
}
	
if place_meeting(x + move_speed +1, y, obj_block) //right
{
	show_debug_message("hit right")
	x += 1
	stopRight = true
}
else
{
	stopRight = false
}




// This code runs when the player is on a wall
if(onWall){
	show_debug_message("on wall")
	// This slows down the player's vertical speed when the player is on a wall
	// This makes them "slide" down slowly
	//vspeed = min(vspeed + 1, 2);
	
	
	// While the player slides down a wall, press the "jump" button to jump off of it.
	if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up)) {
		vspeed = jump_height;
		
		// This checks to see which direction the player should jump.
		// TODO: should the player only jump a short distance (i.e: move_speed) and let
		//		players manually control their distance, orv should they move a set far distance?
		// In other words, do we wnat the player to jump up a wall (i.e Mega Man X) or jump only
		// to the other wall (Mario)?
		if (place_meeting(x-move_speed-1, y, obj_block)) //left
		{

			hspeed = 12
			image_xscale = 1
		} else //right
		{

			hspeed = -12
			image_xscale = -1
		}
		
		
		// This locks the player from influencing their direction briefly after jumping
		// Control Lock yay or nay?
		controlLock = true;
		
		// This lock lasts for 10 frames.
		alarm[1] = 10;
	}
	// This code runs if the player is dashing
} else if (dashing) {
	
	show_debug_message("dashing")
	// Temporarily make the player weightless
	gravity = 0;
	// If the player is facing right, dash right
	// If the player is facing left, dash left
	if(image_xscale = 1){
		hspeed = lengthdir_x(dashSpeed, 0);
	} else {
		hspeed = lengthdir_x(dashSpeed, -180);
	}
	// Reduce the "dash length" by speed
	dashRemaining -= dashSpeed;
	
	// When the dash length is 0,
	// Set hspeed to 0
	// Set dashing to false
	if (dashRemaining < 0){
		hspeed = 0;
		//vspeed = 0;
		dashing = false;
	}
	
} else {
	//show_debug_message("normal state")
	// When the player presses "left", flip the sprite to face left and move the player left at their movement speed value
	
	
	
	
	
	//When player is not moving, slow back down
	/*
	if(!keyboard_check(vk_left) and !keyboard_check(vk_right))
	{
		if(hspeed < 0)
		{
			hspeed += 1
		}
		else if(hspeed > 0)
		{
			hspeed -= 1
		}
	}
	
	hspeed = clamp(hspeed, -maxMoveSpeed, maxMoveSpeed)
	*/
	// When the "up", make the player jump at their jump_height
	// Perhaps we swhould think about messing with "speed" instead of vspeed for less stiff jumping physics (?)
	// TODO: Impliment variable jump height wether the button is tapped or held?
	if(keyboard_check(vk_up) || keyboard_check(vk_space)) {
		if(instance_exists(obj_platform)){
			obj_platform.solid = false
			alarm[0] = 20
		}
		if instance_place(x, y+1, obj_block)
		{
			vspeed = jump_height;
		}
		else if instance_place(x, y+1, obj_platform)
		{
			vspeed = jump_height
		}
	}

	//Implement going down through platform
	if(keyboard_check(vk_down))
	{
		if(instance_exists(obj_platform)){
			downPlatform = true
			obj_platform.solid = false
			alarm[0] = 10
		}
	
	}
	else
	{
		downPlatform = false
	}
	
	// Dash Feature
	if (canDash && (keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(vk_shift))){
		
		defaultState = false;
		// The player cannot dash again right after dashing
		canDash = false;
		// Calculate the dash speed
		dashSpeed = dash_distance / dashTime;
		
		// Temp variable to store how far the dash should go
		dashRemaining = dash_distance;
		
		// Set the player's dashing state to true
		dashing = true;

	}
}

//Movement
if (keyboard_check(vk_left) and !stopLeft)// && !instance_place(x-move_speed, y, obj_block)) 
{
		x += -move_speed
		image_xscale = -1;
		show_debug_message("moving left")
}

// When the player presses "right", flip the sprite to face right and move the player right at their movement speed value
if (keyboard_check(vk_right) and !stopRight)// && !instance_place(x+move_speed, y, obj_block)) 
{
		x += move_speed
		image_xscale = 1;
		show_debug_message("moving right")
}

	// Allows player to stand on blocks
	if instance_place(x, y+1, obj_block){
		gravity = 0;
		canDash = true;
	
	}
	else if instance_place(x, y+1, obj_platform)
	{
		canDash = true;
		if downPlatform == false
		{
			gravity = 0;
		}
		else
		{
			gravity = 0.5
			vspeed = 5
		}
	}
	else {
		gravity = 0.5;
	}

vspeed = min(vspeed, 12);
