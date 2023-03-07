/// @description Game controls
// You can write your code in this editor

//Restart whole game
if(keyboard_check(ord("R")) && keyboard_check(vk_control))
{
	game_restart();
}

//Restart level
if(keyboard_check(ord("R")) &! keyboard_check(vk_control))
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

//Timer Code
if(timerOn == true){
	//Timer increments by 1 frame each step
	timer += room_speed / 60;
	
	// After 60 frames pass, increment seconds by 1
	if (timer % 60 == 0){
		sec++;
		
		// Once sec reaches 60, set itself back to 0
		if (sec > 59){
			sec = 0;
		}
	}
	
	// After 3600 frames (60 seconds pass) increment minute by 1
	if (timer % 3600 == 0){
		minute++;
	}
	
	// Increment milisecond by roughly 16.7 every frame
	mili += (1000 / 60);
		
		// If miliseconds reaches 1000, set it back to 0
		if (mili > 999){
			mili = 0;
		}
}