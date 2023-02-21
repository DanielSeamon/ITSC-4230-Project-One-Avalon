/// @description Set Player's gravity downards
// You can write your code in this editor

// Sets player gravity downwards


/*gravity_direction = 270;


downPlatform = true

*/


_acceleration = 1;
_deceleration = 0.5;
_max_movement = 4;
_jump_height = -15;
_gravity = 1;



hmove = 0;
vmove = 0;

on_wall = false;

wall_sliding = false;

can_move = true;

on_ground = function() {
	return place_meeting(x, y + 1, obj_block);
}

on_platform = function() {
	return place_meeting(x, y + 1, obj_platform);
}
