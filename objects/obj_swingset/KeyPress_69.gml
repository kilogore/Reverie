/// @description Insert description here
// You can write your code in this editor
if distance_to_object(obj_player) <= 32 {
	
		obj_player.grappleX = x+8;
		obj_player.grappleY = y+8;
		
		obj_player.x = x+8;
		obj_player.y = y+32;
	
	with (obj_player) {
		state = playerState.swingSet;
		ropeX = x;
		ropeY = y;
		ropeAngleVelocity =0;
		ropeAngle = point_direction(grappleX,grappleY,x,y);
		ropeDist = point_distance(grappleX,grappleY,x,y);
		
	}

	
}