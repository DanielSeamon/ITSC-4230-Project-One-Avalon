/// @description Set variables
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
_max_fall_speed = 16



hmove = 0;
vmove = 0;

on_wall = false;

wall_sliding = false;

can_move_left = true;
can_move_right = true;

can_dash = false;
dashing = false;

on_ground = function() {
	return place_meeting(x, y + 1, obj_block);
}

on_platform = function() {
	return place_meeting(x, y + 1, obj_platform);
}
