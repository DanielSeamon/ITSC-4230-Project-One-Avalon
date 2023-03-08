_acceleration = 1;
_deceleration = 0.1;
_max_movement = 4;
_jump_height = -3;
_gravity = 0.2;
_max_fall_speed = 16

_cooldown = false

hmove = 1;
vmove = 0;

on_wall = false;



can_move_left = true;
can_move_right = true;



on_ground = function()
{
    if(place_meeting(x, y + 1, obj_block))
    {
        return place_meeting(x, y + 1, obj_block);
    }
    else
    {
        return place_meeting(x, y + 1, obj_ice);
    }
}

on_platform = function() {
    return place_meeting(x, y + 1, obj_platform);
}