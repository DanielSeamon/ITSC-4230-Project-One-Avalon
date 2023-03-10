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

if (distance_to_object(obj_player) < attack_range && (obj_player.y + sprite_height > y && obj_player.y - sprite_height < y)){
	show_debug_message("aggro'd!");
	
	
	if(obj_player.x > x)
	{
		hspeed = hsp * 3 * 1;
	}
	else
	{
		hspeed = hsp * 3 * -1;
	}
	//alarm[0] = 30
	}
	else {
	hspeed = hsp * image_xscale;
	}

/*

