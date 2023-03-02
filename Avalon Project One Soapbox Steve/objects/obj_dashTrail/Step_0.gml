/// @description Gradually fade out of color, and destroy self once invisible
// You can write your code in this editor

image_alpha -= 0.1;

if (image_alpha <= 0.0){
	instance_destroy();
}