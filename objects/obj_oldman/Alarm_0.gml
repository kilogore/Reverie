/// @description Insert description here
// You can write your code in this editor
	if !instance_exists(fx_transition) {
		var aa = instance_create_depth(0,0,-999,fx_transition);
		aa.targetRoom = rm_room;
		aa.targetX = x;
		aa.targetY = y-4;
		
		global.age += 1;
		obj_player.HP = 3;
		obj_player.maxHP = 3;

	}