/// @description Insert description here
// You can write your code in this editor
switch (state) {
	case sm.wait:
		// wait
	break;
	
	case sm.set:
		sprite_index = spr_smashD;
		image_speed = 2;
		state = sm.wait;
	break;
	
	case sm.reset:
		image_index -= 1;
		image_speed = 0;
		if image_index = 0 {
			image_speed = 0;
			state = sm.wait;
			alarm[0] = smashTime;
			sprite_index = spr_smash;
			image_index = 0;
		}
		// wait
	break;
		
}