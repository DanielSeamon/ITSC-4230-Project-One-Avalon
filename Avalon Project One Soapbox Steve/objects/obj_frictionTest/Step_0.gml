/// @description This is an object to test slippery friction physics
// You can write your code in this editor

if(keyboard_check(vk_left)){
	hspeed = -3;
	moving = true;
}

if(keyboard_check(vk_right)){
	hspeed = 3
	moving = true;
}

if(keyboard_check_released(vk_left || vk_right)){
	moving = false
}

// If the player is not moving and ground is beneath them
// Set their friction to a specified value between 0 and 1.
// 0 = no friction, endless sliding
// 1 - 100% friction, full stop
if (moving = false && instance_place(x,y+1, obj_block)){
	friction = traction;
}

if instance_place(x, y+1, obj_block){
	gravity = 0;
} else {
	gravity = 0.5;
}

vspeed = min(vspeed, 12);