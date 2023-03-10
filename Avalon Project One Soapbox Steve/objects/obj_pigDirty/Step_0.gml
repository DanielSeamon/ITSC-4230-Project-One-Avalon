/// @description Insert description here
// You can write your code in this editor

//Check for player in line of sight with pig
if(!activated)
{
	if (collision_line(x, y, x+ (300 * image_xscale), y, obj_player, false, false))
	{
		activated = true;
		//Start alarm to shoot projectile
		alarm[0] =  25;
	}
}