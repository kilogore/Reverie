/// @description Insert description here
// You can write your code in this editor
switch (state) {
	
	case trans.out:
	if sub_img_index < iMAX + xMAX{
		// then increment
		sub_img_index += sub_img_index_inc;
	} else {
		// goto new room	
		room = targetRoom;
		if instance_exists(obj_player) {
			obj_player.x = targetX;
			obj_player.y = targetY;
	
			obj_player.hspd = 0;
			obj_player.vspd = 0;
		}
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