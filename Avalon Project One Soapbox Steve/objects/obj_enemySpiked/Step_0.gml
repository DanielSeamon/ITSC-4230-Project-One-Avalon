/// @description Basic state machine for movement
// You can write your code in this editor

// This never activates while object is influenced by a timeline
// Scrapped unless this can be figured out.
/**
if(distance_to_object(obj_player) < attack_range){
	state = "attack";
}
*/

// This is a basic state machine
switch (state){
	
	// This state does nothing and is just for initialization.
	case "normal":
	break;
	
	// If the state is left, move left and face left.
	case "left":
		x--;
		image_xscale = -1;
	break;
	
	// If the state is right, move right and face right.
	case "right":
		x++;
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