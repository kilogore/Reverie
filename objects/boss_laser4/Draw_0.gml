/// @description Insert description here
// You can write your code in this editor
if laserActive = true {

for (j = 0; j < max_length; j++) {
	draw_sprite_ext(spr_laser2,0,x + lengthdir_x(j, direction) ,
	y + lengthdir_y(j, direction),1,1,direction,c_white,1);
}

}

