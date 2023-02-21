/// @description Timer for descending platforms
// You can write your code in this editor

counter++
y += sprite_height / 4

show_debug_message(counter)

if(counter < 4)
{
	alarm[0] = 1
}