/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_player) <= 24 and global.age = 6 and obj_player.state != playerState.swing {
	
	cangrapple = true;
	if obj_player.canGrab = true {
	
		if global.INTERACT and obj_player.state = playerState.free {
		
			obj_player.grappleX = x+8;
			obj_player.grappleY = y+8;
			
			audio_play_sound(sfx_canegrab,0,false);
			
			//obj_player.x = x+8;
			//obj_player.y = y+32;
		
			with (obj_player) {
				state = playerState.swing;
				ropeX = x;
				ropeY = y;
				ropeAngleVelocity =0;
				ropeAngle = point_direction(grappleX,grappleY,x,y);
				ropeDist = point_distance(grappleX,grappleY,x,y);
				canGrab = false;
				
			}
		
		}
		
	}

	
} else {
	cangrapple = false;
}