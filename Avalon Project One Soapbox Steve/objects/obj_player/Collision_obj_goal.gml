/// @description When all objects are clean, goal sends you to next level
// You can write your code in this editor

if(!instance_exists(obj_enemyDirty) and !instance_exists(obj_objectiveDirty))
{
room_goto_next();
}