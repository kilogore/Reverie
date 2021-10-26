/// @description Insert description here
// You can write your code in this editor
switch (state) {
	
	case trans.out:
	if sub_img_index < iMAX + xMAX{
		// then increment
		sub_img_index += sub_img_index_inc;
	} else {
		// goto new room	
		room = rm_credits;
			instance_destroy(obj_player);
		if instance_exists(obj_camera) {instance_destroy(obj_camera);}
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