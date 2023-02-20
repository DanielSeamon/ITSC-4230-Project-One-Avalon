/// @description Prevents player from falling through the ground
// You can write your code in this editor

if(!onWall)
{
	//vspeed = 0;
}

//collide on left
//Needs to be fixed. Collisions are triggering when hitting top of blocks as well
if(other.x < x and other.y < y) 
{
	show_debug_message("collide on left")
	other.solid = false
	hspeed = 0
	other.solid = true
}

//collide on right
if(other.x > x)
{
	show_debug_message("collide on right")
	other.solid = false
	hspeed = 0
	other.solid = true
}

//collide from above

if(other.y > y)
{
	show_debug_message("collide from above")
	other.solid = false
	y = other.y - other.sprite_height/4
	vspeed = 0
	

	
	
}