// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_swing(){
	
	var _ropeAngleAcceleration =-0.2 *dcos(ropeAngle);
	
	_ropeAngleAcceleration += (global.R - global.L) * 0.08;
	//ropeDist += (global.J)
	
	ropeDist = max(ropeDist,24);
	ropeDist = min(ropeDist,24);
	
	ropeAngleVelocity += _ropeAngleAcceleration;
	ropeAngle += ropeAngleVelocity;
	ropeAngleVelocity *= 0.99; // represents air friction, dampens
	
	ropeX = grappleX + lengthdir_x(ropeDist,ropeAngle);
	ropeY = grappleY + lengthdir_y(ropeDist,ropeAngle);
	
	hspd = ropeX - x;
	vspd = ropeY - y;
	
	if global.J or global.INTERACT {
		state = playerState.free;
		vspd = S_JUMP_SPEED;
		alarm[4] = grappleCDR;
		
	}
	
	sprite_index = spr_old_Swing;
	
	
}