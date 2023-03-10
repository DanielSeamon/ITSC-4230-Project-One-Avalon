/// @description Game controls
// You can write your code in this editor

//Restart whole game
if(keyboard_check(ord("G")) && keyboard_check(vk_control))
{
	game_restart();
}

//Restart level
if(keyboard_check(ord("R")) && keyboard_check(vk_control))
{
	room_restart();
}

//Need to implement check to see if room is the last one
if(keyboard_check_pressed(ord("N")) && keyboard_check(vk_control))
{
	if(room != rm_end)
	{
		room_goto_next();
	}
}

//Instantly cleans all enemies and objectives
if(keyboard_check_pressed(ord("C")) && keyboard_check(vk_control))
{
	if(instance_exists(obj_enemyDirty))
	{
		instance_destroy(obj_enemyDirty)
	}
	
	if(instance_exists(obj_objectiveDirty))
	{
		instance_destroy(obj_objectiveDirty)
	}
	
}



//Enables invincibility
//Probably want to make the player golden or something with the sprite to show that they are invincible
if(keyboard_check_pressed(ord("I")) && keyboard_check(vk_control))
{
	if(global.invincible)
	{
		global.invincible = false;
	}
	else
	{
		global.invincible = true;
	}
	show_debug_message(global.invincible)
}

// stop backgorund music while in results room
if (room == rm_finalResults) {
	audio_stop_sound(snd_mainMusic)	
}