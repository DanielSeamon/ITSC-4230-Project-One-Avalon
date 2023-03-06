/// @description Insert description here
// You can write your code in this editor

if (collision_line(x, y, x+300, y, obj_player, false, false) && cooldown == false){
	instance_create_layer(x + (image_xscale* 30),y,"Instances", projectile);
	cooldown = true;
	alarm[0] =  160;
}