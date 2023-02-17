/// @description When all objects are clean, goal sends you to next level
// You can write your code in this editor

if(!object_exists(obj_enemyDirty) and !object_exists(obj_objectiveDirty))
{
room_goto_next();
}