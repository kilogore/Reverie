// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_laser(){
for (j = 0; j < max_length; j++) {
	draw_sprite_ext(spr_laser2,0,x + lengthdir_x(j, im) ,
	y + lengthdir_y(j, im),1,1,im,c_white,1);
}
}