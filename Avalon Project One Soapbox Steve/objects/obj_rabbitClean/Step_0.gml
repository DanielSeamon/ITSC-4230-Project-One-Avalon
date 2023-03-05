/// @description Insert description here
// You can write your code in this editor

if instance_place(x, y+1, obj_block){
	gravity = 0;
} else {
	gravity = 0.5;
}

vspeed = min(vspeed, 12);