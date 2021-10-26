/// @description Insert description here
// You can write your code in this editor
x = boss_final.x;
y = boss_final.y;

direction = laserAng;

if laserActive = true {


for (i = 0; i < max_length; i++) {
	xEnd = x + lengthdir_x(i, direction);	
	yEnd = y + lengthdir_y(i, direction);
	
	length_laser = i;
	
	if (collision_point(xEnd,yEnd,obj_player,0,0) ) {with (obj_player) {ply_ow();}}
	if (collision_point(xEnd,yEnd,obj_block,0,0) ) {break;}
}
}

laserAng += global.laserRotSpd;

