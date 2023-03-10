/// @description Player Movement and controls are handled here
// You can write your code in this editor

// If a "block" is directly to the left of right of the player, change player state to
// "on_wall"
on_wall = false
wall_sliding = false


//Check to see if player falls out of bounds
if(x < 0 or x > 1920 or y > 1080 or y < 0)
{
	instance_destroy()
}


//
//HORIZONAL MOVMENT
//

//Cancels out movement if both keys are pressed. Left will be negative, and right will be positive
horizontal_input = keyboard_check(vk_right) - keyboard_check(vk_left);

//Nullifies movement if cant_move variables are true
if(!can_move_left)
{
	horizontal_input = keyboard_check(vk_right)
}
if(!can_move_right)
{
	horizontal_input = -keyboard_check(vk_left)
}

	
if(horizontal_input != 0) //If moving
{
	hmove += horizontal_input * _acceleration;
	//Cap movement to max
	if(!dashing)
	{
		hmove = clamp(hmove, -_max_movement, _max_movement);
	}
	
	//If moving right, face character to right and vice versa
	if(sign(hmove < 0))
	{
		image_xscale = -1
	}
	else if(sign(hmove > 0))
	{
		image_xscale = 1
	}
}
else //If not moving, decelerate back to 0 horizontal speed
{
	// TODO: Watson I'm not sure how to integrate Friction into
	// your movement code. In my test_object, the simpler control
	// programm's friction works, but here the player just keeps
	// sliding, or doesn't slide at all.
	// You know your variables better than I do, so shoot me a message
	// about what to do or feel free t integrate it yourself if it seems
	// simple enough.
	/*
	if (instance_place(x, y+1, obj_block)){
		friction = 0.1;
	}
	*/
	if(hmove > _deceleration)
	{
		hmove -= _deceleration;
	}
	else if (hmove < -_deceleration)
	{
		hmove += _deceleration;
	}
	else
	{
		hmove = 0;
	}
}
	
//Check for collision with block
if(place_meeting(x + hmove, y, obj_block))
{		
	//Move slowly into the wall if touching it to ensure player is flush with wall
	while(!place_meeting(x + sign(hmove), y , obj_block)) {
		x += sign(hmove);
	}
		
	hmove = 0;
	//set for wall sliding and jumping
	on_wall = true;
}

//Same with ice
if(place_meeting(x + hmove, y, obj_ice))
{		
	//Move slowly into the wall if touching it to ensure player is flush with wall
	while(!place_meeting(x + sign(hmove), y , obj_ice)) {
		x += sign(hmove);
	}
		
	hmove = 0;
	//set for wall sliding and jumping
	on_wall = true;
}

//Dashing
if(dashing){
	with (instance_create_depth(x, y, depth+1, obj_dashTrail)){
		sprite_index = other.sprite_index;
		image_blend = c_red;
		image_alpha = 0.7;
	}
}

//Dash resets only when on ground
if((on_ground() or on_platform()) && !dashCooldown)
{
	can_dash = true;
	//show_debug_message("on ground")

}

if(keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("Z")))
{
	if(can_dash and hmove != 0)
	{	
		audio_play_sound(snd_dashSnare,2,false);
		can_dash = false;
		dashing = true;
		dashCooldown = true;
		alarm[3] = 50;
		vmove = 0;
		show_debug_message("dashing")
		if(hmove > 0)
		{
			hmove = _max_movement * 2;
		}
		else
		{
			hmove = -_max_movement * 2;
		}
		alarm[2] = 10;
		
	}	
}

	
x += hmove;

//
//VERTICAL MOVEMENT
//

if(!dashing)
{
	vmove += _gravity;
	vmove = clamp(vmove, -_max_fall_speed, _max_fall_speed)
}


//show_debug_message(vmove)
//For some reason this code has to be above the wall sliding code
if(vmove > 1 and on_wall)
{
		wall_sliding = true;
}

//Wall sliding
//Check for if descending while next to wall
if(on_wall and vmove > 0)
{
	//show_debug_message("on wall")
	
	//Set movespeed to gravity constant instead of accelerating
	vmove = _gravity
	
	//show_debug_message(vmove)
	if(vmove > 1)
	{
		wall_sliding = true;
	}
}


//Jumping physics
if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(vk_space))
{
	//Only able to jump if on the ground
	if(on_ground() or on_platform())
	{
		vmove += _jump_height;
	}
}


//Wall Jumping
if(wall_sliding)
{
	//show_debug_message("wall sliding")
	if ((keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_up)))
	{
	
		//Jumps horizontally depending on what wall player is one
		hmove = 9 * -sign(image_xscale)
		vmove = _jump_height / 1.1;
		//show_debug_message("should walljump")
		
		
		if(image_xscale > 0)
		{
			can_move_right = false;
		}
		else
		{
			can_move_left = false;
		}
		
		alarm[1] = 10	
	}
}



//Check for standing on block
if(place_meeting(x, y + vmove, obj_block))
{
	//Ensure deceleration is set correctly
	_deceleration = 0.5;
	//Move slowly into the ground if touching it to ensure player is flush with ground
	while(!place_meeting(x, y + sign(vmove), obj_block)) {
		y += sign(vmove);
	}
		
	vmove = 0;
}

//Same for ice but changes deceleration

if(place_meeting(x, y + vmove, obj_ice))
{
	//Makes player decelerate more slowly
	_deceleration = 0.04;
	
	//Move slowly into the ground if touching it to ensure player is flush with ground
	while(!place_meeting(x, y + sign(vmove), obj_ice)) {
		y += sign(vmove);
	}
		
	vmove = 0;
}

//Check for standing on platform, only if falling
if(vmove > 0)
{
	if(place_meeting(x, y + vmove, obj_platform))
	{
		_deceleration = 0.5;
		//Move slowly into the ground if touching it to ensure player is flush with ground
		while(!place_meeting(x, y + sign(vmove), obj_platform)) {
			y += sign(vmove);
		}
		
		vmove = 0;
	}
}

//Descend through platforms
if(keyboard_check_pressed(vk_down))
{
	//Only able to go down if on a platform
	downCounter = 0
	if(on_platform() &! on_ground())
	{
		//Used to make movement smoother
		alarm[0] = 1
	}
}

//Allows player to stand on spikes/danger blocks if invincible
if(global.invincible)
{
	if(place_meeting(x, y + vmove, obj_danger))
	{
		//Move slowly into the ground if touching it to ensure player is flush with ground
		while(!place_meeting(x, y + sign(vmove), obj_danger)) {
			y += sign(vmove);
		}
		
		vmove = 0;
	}
}
	
y += vmove;



//NON-MOVEMENT RELATED




