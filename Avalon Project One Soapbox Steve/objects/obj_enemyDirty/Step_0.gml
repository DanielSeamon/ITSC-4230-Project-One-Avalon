/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x + hsp, y, obj_block) || place_meeting(x - hsp, y, obj_block))
{		
	//Move slowly into the wall if touching it to ensure player is flush with wall
	while(!place_meeting(x + sign(hsp), y , obj_block)) {
		x += sign(hsp);
	}
	
	image_xscale = -image_xscale;
	hspeed = -hsp;
}