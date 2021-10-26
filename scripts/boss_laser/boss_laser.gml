// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function boss_laser(){


for (i = 0; i < max_length; i++) {
	xEnd = x + lengthdir_x(i, im);	
	yEnd = y + lengthdir_y(i, im);
	
	length_laser = i;
	
	if (collision_point(xEnd,yEnd,obj_player,0,0) ) {with (obj_player) {ply_ow();}}
	if (collision_point(xEnd,yEnd,obj_block,0,0) ) {break;}

}


}