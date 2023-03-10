/// @description Set global vars
// You can write your code in this editor

//While play_music is true play background music
if (!(room_get_name(rm_end) = true)) {
	audio_play_sound(snd_mainMusic,1,true)
}

global.invincible = false;

// These are for storing level completion times
// These strings are called at the end of the game to print the player's
// individual level completion times.
global.devRoomTime = " ";
global.levelOneTime = " ";
global.levelTwoTime = " ";