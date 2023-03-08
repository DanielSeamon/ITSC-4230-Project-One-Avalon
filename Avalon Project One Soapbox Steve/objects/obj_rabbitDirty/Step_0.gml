//Horizontal

//Check for wall collision
if(place_meeting(x + hmove, y, obj_block))
{		

	if(!_cooldown)
	{
		show_debug_message("reverse")
		hmove = -hmove;
		_cooldown = true;
		alarm[0] = 20;
	}
}


//Cap movement to max
hmove = clamp(hmove, -_max_movement, _max_movement);
	
//If moving right, face character to right and vice versa
if(sign(hmove < 0))
{
	image_xscale = -1
}
else if(sign(hmove > 0))
{
	image_xscale = 1
}
x += hmove;


//Vertical

vmove += _gravity;
vmove = clamp(vmove, -_max_fall_speed, _max_fall_speed)
	
	
if(on_ground() or on_platform())
{
	vmove += _jump_height;
}
	
//Check for standing on block
if(place_meeting(x, y + vmove, obj_block))
{
	//Move slowly into the ground if touching it to ensure player is flush with ground
	while(!place_meeting(x, y + sign(vmove), obj_block)) {
		y += sign(vmove);
	}
		
	vmove = 0;
}
	
y += vmove;
