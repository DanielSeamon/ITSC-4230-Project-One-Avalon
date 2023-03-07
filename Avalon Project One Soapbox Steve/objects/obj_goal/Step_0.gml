/// @description Check to see if objectives are complete

if(!instance_exists(obj_enemyDirty) and !instance_exists(obj_objectiveDirty))
{
	sprite_index = spr_goalOpen
	if (ringTrue = false) {
		audio_play_sound(snd_ding,1,false)
		ringTrue = true
	}
}



