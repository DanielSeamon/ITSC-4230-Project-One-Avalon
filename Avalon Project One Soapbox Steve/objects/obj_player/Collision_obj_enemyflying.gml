/// @description For collision with flying enemies
// You can write your code in this editor

show_debug_message(hmove)
if(abs(hmove) > 4)
{
	instance_destroy(other);
}
//If player is above enemy, destroy it
// For some reason the reverse "y > other.y" works here while the other doesn't
// I don't know why, but roll with it.
else if (vmove > 0 && y > other.y)
{
	instance_destroy(other);
}
else
{
	instance_destroy();
}