/// @description Insert description here
// You can write your code in this editor

draw_set_colour($FFFFFFFF);

draw_set_halign(fa_left);

draw_set_font (fnt_GUI); 

//Draw Level Name
switch (room){
	
	case rm_devRoom:
		draw_text(55, 55, "Developer's Room");
		break;
		
	case rm_level1:
		draw_text(55, 55, "The Basics");
		break;
	
	case rm_level2:
		draw_text(55, 55, "Skyscraper");
		break;
		
	case rm_level3:
		draw_text(55, 55, "The Park");
		break;
		
	case rm_level4:
		draw_text(55, 55, "Scaffolds");
		break;
	
	default:
		draw_text(55, 55, "This shouldn't show");
		break;
}

// Draw the Timer
var str_min = string_format(minute, 2, 0);
str_min = string_replace(str_min, " ", "0");

var str_sec = string_format(sec, 2, 0);
str_sec = string_replace(str_sec, " ", "0");

var str_mili = string_format(mili, 3, 0);
str_mili = string_replace(str_mili, " ", "0");

displayTime = "Timer: " + str_min + ":" + str_sec + ":" + str_mili
draw_text(55, 85, displayTime);