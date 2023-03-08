/// @description Insert description here
// You can write your code in this editor

// For some reason the alarm only triggers when the alarm is set to 1
// Not sure why, but the code works otherwise.
alarm[0] = 1;


if (instance_place(x+1, y-5, obj_block)){
	hspeed = -hspeed;
	image_xscale = -image_xscale;
}
if instance_place(x, y+1, obj_block){
	gravity = 0;
} else {
	gravity = 0.5;
}

vspeed = min(vspeed, 12);