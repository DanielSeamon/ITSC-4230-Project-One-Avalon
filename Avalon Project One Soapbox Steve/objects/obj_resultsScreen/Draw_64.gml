/// @description Insert description here
// You can write your code in this editor

draw_set_colour($FFFFFFFF);

draw_set_halign(fa_center);

draw_set_font (fnt_GUI);


draw_text(room_width / 2 + ui_offset, 55, "Congratulations!");
draw_text(room_width / 2 + ui_offset, 80, "Your Time Attack Results are:");
		
switch (printVal){
	
	case 0:
		draw_text(room_width / 2 + ui_offset, 105, "Level 1 - The Basics: " + global.levelOneTime);
		
		break;
	
	case 1:
		draw_text(room_width / 2 + ui_offset, 105, "Level 1 - The Basics: " + global.levelOneTime);
		draw_text(room_width / 2 + ui_offset, 130, "Level 2 - Skyscraper: " + global.levelTwoTime);
		
		break;
	
	case 2:
		draw_text(room_width / 2 + ui_offset, 105, "Level 1 - The Basics: " + global.levelOneTime);
		draw_text(room_width / 2 + ui_offset, 130, "Level 2 - Skyscraper: " + global.levelTwoTime);
		draw_text(room_width / 2 + ui_offset, 155, "Level 3 - The Park: " + global.levelThreeTime);
		
		break;
		
	case 3:
		draw_text(room_width / 2 + ui_offset, 105, "Level 1 - The Basics: " + global.levelOneTime);
		draw_text(room_width / 2 + ui_offset, 130, "Level 2 - Skyscraper: " + global.levelTwoTime);
		draw_text(room_width / 2 + ui_offset, 155, "Level 3 - The Park: " + global.levelThreeTime);
		draw_text(room_width / 2 + ui_offset, 180, "Level 4 - Scaffolds: " + global.levelFourTime);
		
		break;
		
	case 4:
		draw_text(room_width / 2 + ui_offset, 105, "Level 1 - The Basics: " + global.levelOneTime);
		draw_text(room_width / 2 + ui_offset, 130, "Level 2 - Skyscraper: " + global.levelTwoTime);
		draw_text(room_width / 2 + ui_offset, 155, "Level 3 - The Park: " + global.levelThreeTime);
		draw_text(room_width / 2 + ui_offset, 180, "Level 4 - Scaffolds: " + global.levelFourTime);
		
		// These coordinates are the coordinates above the restart flag.
		draw_text(1700, 840, "Challenge Again?");
		break;
	
	default:
	draw_text(55,55, "This shouldn't happen.");
	break;
}