/// @description Set global vars
// You can write your code in this editor

//play background music
audio_play_sound(snd_mainMusic, 1, true)

global.invincible = false;

// These are for storing level completion times
// These strings are called at the end of the game to print the player's
// individual level completion times.
global.devRoomTime = "00:00:000";
global.levelOneTime = "00:00:000";
global.levelTwoTime = "00:00:000";
global.levelThreeTime = "00:00:000";
global.levelFourTime = "00:00:000";
global.levelFiveTime = "00:00:000";