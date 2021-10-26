// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_controls(){
	
	// holds
	
	global.L = keyboard_check(ord("A"));
	global.R = keyboard_check(ord("D"));
	global.Lp = keyboard_check_pressed(ord("A"));
	global.Rp = keyboard_check_pressed(ord("D"));
	
	// presses
	
	global.INTERACT = keyboard_check_pressed(ord("E"))
	global.J = keyboard_check_pressed(vk_space);
	global.JHOLD = keyboard_check(vk_space);
	global.RUN = !keyboard_check(vk_shift);
	global.THROW = mouse_check_button_pressed(mb_left);
}