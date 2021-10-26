/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_player) {
	obj_player.hspd = flySPD;
}

instance_create_depth(random_range(x,x+width),random_range(y,y+32),10,part_fanR);