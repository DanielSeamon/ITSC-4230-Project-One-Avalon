/// @description Insert description here
// You can write your code in this editor

if(hspeed > 4)
{
	instance_destroy(other);
}
//If player is above enemy, destroy it
else if (vspeed > 0 && y > other.y)
{
	instance_destroy(other);
}
else
{
	instance_destroy();
}