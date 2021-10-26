/// @description Insert description here
// You can write your code in this editor
if !place_meeting(x,y,obj_player) {
	if image_index > 9 {
		image_index += 1;	
		
		if image_index > 19 image_index = 0;
	}
	
	if image_index > 1 and image_index <= 9 {
		image_index += 1;	
	}
	
}