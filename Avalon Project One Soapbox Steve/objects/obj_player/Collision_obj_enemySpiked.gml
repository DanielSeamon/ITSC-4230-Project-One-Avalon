/// @description Collision logic for the spiked enemy
// You can write your code in this editor

// Player can destroy enemy by dashing into them
if(abs(hmove) > 4)
{
	instance_destroy(other);
}
// player cannot defeat this enemy by jumping on them
else
{
	instance_destroy();
}


