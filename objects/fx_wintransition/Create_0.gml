/// @description set sprite

startMusic = false;

global.pause = true;

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
col = c_white;