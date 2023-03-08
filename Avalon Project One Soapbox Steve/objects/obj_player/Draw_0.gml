/// @description Shader code handled here
// You can write your code in this editor

//While dashing, tint the player's sprite orange
if(dashing){
	shader_set(Shader1);

	draw_self();

	shader_reset();
} else if (global.invincible) {
	shader_set(Shader2);

	draw_self();

	shader_reset();
} else {
	
	// When the player is not dashing, draw them normally
	// Warning, if this bit of code is removed, the player will be invisible.
	draw_self();
}