// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_game(){
	randomize();
	
	global.pause = false;
	
	global.Xstage = 0;
	global.Ystage = 0;
	
	global.FLIGHT = false;
	
	init_controls();
	init_abilities();
	scribble_font_set_default("fnt_message");
}