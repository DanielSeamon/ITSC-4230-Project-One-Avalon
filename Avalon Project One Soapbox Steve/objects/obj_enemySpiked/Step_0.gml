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


if (distance_to_object(obj_player) < attack_range){
	aggro = true;
	show_debug_message("aggro'd!");
	} else {
	//aggro = false;
	//hspeed = hsp;
	}
if (aggro = true){
	
	sprite_index = spr_turtleAttack;
	// This is a basic state machine
	switch (state){
	
		// This state does nothing and is just for initialization.
		case "normal":
		break;
	
		// If the state is left, move left and face left.
		case "left":
			hspeed = -hsp * 3;
			//x -= 2;
			image_xscale = -1;
		break;
	
		// If the state is right, move right and face right.
		case "right":
			hspeed = hsp * 3;
			//x += 2;
			image_xscale = 1;
		break;
	
		// If the player is range, increase hspeed to 5 and bounce off walls.
		// This doesn't seem to work since the timeline takes priority, Scrapped until further notice.
		/**
		case "attack":
			hspeed = 5;
			if (place_meeting(x+1, y, obj_block)){
				hspeed = -hspeed;
				image_xscale = -image_xscale;
			}
		*/
		default:
		break;
	}
	
}