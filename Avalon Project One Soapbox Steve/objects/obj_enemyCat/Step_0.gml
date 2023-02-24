/// @description Insert description here
// You can write your code in this editor

if (!place_meeting(x + 1, y + 1, obj_block) || place_meeting(x + 1, y, obj_block)){
	hspeed = -hspeed;
	image_xscale = -image_xscale;
}