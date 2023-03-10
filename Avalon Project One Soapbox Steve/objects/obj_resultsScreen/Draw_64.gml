/// @description Insert description here
// You can write your code in this editor

draw_set_colour($FFFFFFFF);

draw_set_halign(fa_center);


draw_text(room_width / 2, 55, "Congratulations!");
draw_text(room_width / 2, 65, "Your Time Attack Results are:");
		
switch (printVal){
	
	case 0:
		draw_text(room_width / 2, 85, "Level 1 - The Basics: " + global.levelOneTime);
	break;
	
	case 1:
		draw_text(room_width / 2, 85, "Level 1 - The Basics: " + global.levelOneTime);
		draw_text(room_width / 2, 95, "Level 2 - Skyscraper: " + global.levelTwoTime);
	break;
	
	default:
	draw_text(55,55, "This shouldn't happen.");
	break;
}