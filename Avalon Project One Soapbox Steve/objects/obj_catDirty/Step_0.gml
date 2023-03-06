/// @description Insert description here
// You can write your code in this editor

//Detect to see if there is ground ahead of itself
if(place_meeting(x + hspeed, y + sprite_height, obj_block))
{
}
//check for platforms as well
else if(place_meeting(x + hspeed, y + sprite_height, obj_platform))
{
}
//If there is no platform, enemy will reverse direction
else
{
	hspeed = -hspeed;
	image_xscale = -image_xscale;	
}


