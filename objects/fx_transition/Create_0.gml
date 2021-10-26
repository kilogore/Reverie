/// @description set sprite

startMusic = false;

if instance_exists(obj_player) {
	obj_player.hspd = 0;
	obj_player.vspd = 0;
	obj_player.image_speed = 0;
}

global.pause = true;

enum trans {
	in,
	out
}

state = trans.out;

spr = spr_white_grow;
sprW = sprite_get_width(spr);
sprH = sprite_get_height(spr);

// get number of sprites
xMAX = display_get_gui_width() div sprW;
yMAX = display_get_gui_height() div sprH;

iMAX = sprite_get_number(spr);

// set image_speed
sub_img_index_inc = sprite_get_speed(spr)/room_speed; // step increment
sub_img_index = 0;

// transition color
col = c_black;