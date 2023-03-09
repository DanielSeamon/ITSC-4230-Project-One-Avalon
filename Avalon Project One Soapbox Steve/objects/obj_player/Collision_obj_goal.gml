/// @description When all objects are clean, goal sends you to next level
// You can write your code in this editor

if(!instance_exists(obj_enemyDirty) and !instance_exists(obj_objectiveDirty))
{
	// If Timer exists in level, save timer string to a global variable.
	// These strings will later be used to print the player's final times at completion.
	if(instance_exists(obj_timer)){
		// Get the name for the room for the switch statement.
		var name = room_get_name(room);
		
		// Based on the name of the room, save the timer string to a different global variable.
		switch (name){
			
			// Time string for the devRoom
			case "rm_devRoom":
				global.devRoomTime = obj_timer.displayTime;
				show_debug_message("Dev Room Time: " + global.devRoomTime);
				break;
			
			// Time string for Level 1
			case "rm_level1":
				global.levelOneTime = obj_timer.displayTime;
				show_debug_message("Level 1 Time: " + global.levelOneTime);
				break;
			
			
			default:
				break;
		}
	}
	room_goto_next();
}