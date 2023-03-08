/// @description Upon death, restart the room
// You can write your code in this editor



show_debug_message(global.invincible)
if(!global.invincible || (x < 0 or x > 1920 or y > 1080 or y < 0))
{
	audio_play_sound(snd_playerDeath,1,false)
	room_restart();
	show_debug_message("not invicible")
}


if(global.invincible)
{
	instance_create_layer(x, y, "Instances_Player", obj_player);
	show_debug_message("invicible")
}
