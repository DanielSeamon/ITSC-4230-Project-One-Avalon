/// @description Jump on an enemy to destory them, else destroy the player
// You can write your code in this editor


//Allows player to kill enemies by dashing through them
if(abs(hmove) > 4)
{
	instance_destroy(other);
}
//If player is above enemy, destroy it
else if (vmove > 0 && y < other.y)
{
	instance_destroy(other);
}
else
{
	instance_destroy();
}