/// @description Insert description here
// You can write your code in this editor
switch (state) {
	case wormState.emerge:
	

		
		if y <= yMax {
			y += 1;	
		}
	
		if distance_to_object(obj_player) > 16 {
			state = wormState.hide;	
		}
		
	break;
	
	case wormState.hide:
	
		if y >= yMin {
			y -= 1;	
		}

	
		if distance_to_object(obj_player) <= 16 {
			state = wormState.emerge;	
		}
	break;
	
}