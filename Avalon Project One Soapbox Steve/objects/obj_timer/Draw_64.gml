/// @description Insert description here
// You can write your code in this editor

draw_set_colour($FFFFFFFF)

draw_set_halign(fa_left)

var str_min = string_format(minute, 2, 0);
str_min = string_replace(str_min, " ", "0");

var str_sec = string_format(sec, 2, 0);
str_sec = string_replace(str_sec, " ", "0");

var str_mili = string_format(mili, 3, 0);
str_mili = string_replace(str_mili, " ", "0");

draw_text(55, 55, "Timer: " + str_min + ":" + str_sec + ":" + str_mili);