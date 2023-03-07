/// @description Upon death, restart the room
// You can write your code in this editor

audio_play_sound(snd_playerDeath,1,false)

show_debug_message(global.invincible)
if(!global.invincible)
{
	room_restart();
	show_debug_message("not invicible")
}


if(global.invincible)
{
	instance_create_layer(x, y, "Instances_Player", obj_player);
	show_debug_message("invicible")
}
