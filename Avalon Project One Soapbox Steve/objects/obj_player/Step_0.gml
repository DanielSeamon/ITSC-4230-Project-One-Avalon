/// @description Player Movement and controls are handled here
// You can write your code in this editor

// When the player presses "left", flip the sprite to face left and move the player left at their movement speed value
if (keyboard_check(vk_left) && !instance_place(x-move_speed, y, obj_block) ) {
		x += -move_speed
		image_xscale = -1;
}

// When the player presses "right", flip the sprite to face right and move the player right at their movement speed value
if (keyboard_check(vk_right) && !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed
		image_xscale = 1;
}

// When the "up", make the player jump at their jump_height
// Perhaps we swhould think about messing with "speed" instead of vspeed for less stiff jumping physics (?)
// TODO: Impliment variable jump height wether the button is tapped or held?
if(keyboard_check(vk_up)) {
	obj_platform.solid = false
	alarm[0] = 20
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
	downPlatform = true
	obj_platform.solid = false
	alarm[0] = 10
	
}
else
{
	downPlatform = false
}



// Allows player to stand on blocks
if instance_place(x, y+1, obj_block){
	gravity = 0;
	
}
else if instance_place(x, y+1, obj_platform)
{
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