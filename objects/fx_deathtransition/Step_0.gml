/// @description Insert description here
// You can write your code in this editor
switch (state) {
	
	case trans.out:
	if sub_img_index < iMAX + xMAX{
		// then increment
		sub_img_index += sub_img_index_inc;
	} else {
		// goto new room	
		room = rm_0_0;
			obj_player.x = 576;
			obj_player.y = 501;
			obj_player.HP = 3;
			obj_player.maxHP = 3;
			obj_player.drawme = true;
		if instance_exists(obj_camera) {obj_camera.follow = obj_player;}
		state = trans.in;
	}
	break;
	
	case trans.in:
		if sub_img_index > 0 {
			sub_img_index -= sub_img_index_inc;
		} else {
			instance_destroy();
		}
	break;
}