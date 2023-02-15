/// @description Jump on an enemy to destory them, else destroy the player
// You can write your code in this editor

if (vspeed > 0 && y < other.y) {
	instance_destroy(other);
} else {
	instance_destroy();
}