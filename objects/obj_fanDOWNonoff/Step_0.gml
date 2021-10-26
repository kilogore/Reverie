/// @description Insert description here
// You can write your code in this editor

if on = true {

if place_meeting(x,y,obj_player) {
	obj_player.vspd += flySPD;
	if obj_player.vspd > obj_player.S_MAX_V {obj_player.vspd = obj_player.S_MAX_V;}
}

instance_create_depth(random_range(x,x+32),random_range(y,y+height),10,part_fanD);

}