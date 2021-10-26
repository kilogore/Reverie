/// @description Insert description here
// You can write your code in this editor
switch (state) {
	case wormState.emerge:
	
		if y >= yMin {
			y -= wormSpd;	
		}
	
		if distance_to_object(obj_player) > 16 {
			state = wormState.hide;	
		}
		
	break;
	
	case wormState.hide:
	
		if y <= yMax {
			y += wormSpd;	
		}
	
		if distance_to_object(obj_player) <= 16 {
			state = wormState.emerge;	
		}
	break;
	
}