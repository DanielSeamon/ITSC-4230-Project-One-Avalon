/// @description Insert description here
// You can write your code in this editor


if(!stopJump)
{
	if instance_place(x, y+1, obj_block){
		vspeed = -5;
		stopJump = true;
		alarm[0] = 20;
	}
}


/*if (instance_place(x+1, y-5, obj_block)){
	hspeed = -hspeed;
	image_xscale = -image_xscale;
}*/

if(!stopJump)
{
	stopJump = true;
	alarm[0] = 20;
	if(place_meeting(x + hspeed, y, obj_block))
	{		
		hspeed = -hspeed;
		image_xscale = -image_xscale;
	}
}
else if(place_meeting(x + hspeed, y, obj_block))
{		
	//hspeed = 0;
}

//check for if on ground
if instance_place(x, y+1, obj_block){
	gravity = 0;
} else {
	gravity = 0.5;
}


//Limits vspeed
vspeed = min(vspeed, 12);