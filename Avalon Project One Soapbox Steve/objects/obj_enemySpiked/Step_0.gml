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
	turnCooldown = true;
	alarm[0] = 15;
}

if (distance_to_object(obj_player) < attack_range && (obj_player.y + sprite_height > y && obj_player.y - sprite_height < y)){
	show_debug_message("aggro'd!");
	sprite_index = spr_turtleAttack;
	
	if(!turnCooldown)
	{
		if(obj_player.x > x)
		{
			hspeed = hsp * 3 * 1;
		}
		else
		{
			hspeed = hsp * 3 * -1;
		}
	}

}
	else {
	hspeed = hsp * image_xscale;
	sprite_index = spr_turtleDirty;
	}

/*

