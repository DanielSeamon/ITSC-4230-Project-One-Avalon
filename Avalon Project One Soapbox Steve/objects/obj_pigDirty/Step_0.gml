/// @description Insert description here
// You can write your code in this editor

//Check for player in line of sight with pig
if (collision_line(x, y, x+300, y, obj_player, false, false))
{
	//Start alarm to shoot projectile
	alarm[0] =  25;
}