/// @description Insert description here
// You can write your code in this editor
//if distance_to_object(obj_player) <= 128 {global.FLIGHT = true;}

event_inherited();

if flex = true {

if flexDir = "down" {
	if y < ystart + flexY {
		y += flexRate;
	} else {
		flexDir = "up";
	}
}

if flexDir = "up" {
	if y > ystart - flexY {
		y -= flexRate;
	} else {
		flexDir = "down";
	}
}

}
	
switch (state) {
	
	case final.idle:
		if distance_to_object(obj_player) <= 132 {
			with (obj_bottleToss) {instance_destroy();}
			state = final.phase1;
		}
	break;
	
	case final.phase1:
	flex = true;
	
	if toss = true {
		toss = false;
			aa = instance_create_depth(x,y-16,-5,obj_bottleThrow);
			aa.direction = point_direction(x,y,obj_player.x,obj_player.y);
			aa.speed = 5;
			aa.gravity = 0.1;
			audio_play_sound(sfx_laser1,0,false);
		alarm[0] = bottleCD;
		bottleNum -= 1;
	}
	
	
	dir = point_direction(x,y,obj_player.x,obj_player.y);
	im += sin(degtorad(dir - im)) * rotateSpd;
	
	if laserOn = true {
		boss_laser();
		if !audio_is_playing(sfx_laser3) {audio_play_sound(sfx_laser3,0,false);}
	}
	
	if !instance_exists(boss_joint) and !instance_exists(boss_joint2){
		state = final.phase2;	
		alarm[2] = laserPulseSpd;
			boss_laser1.laserActive = true;
			boss_laser2.laserActive = true;
			boss_laser3.laserActive = true;
			boss_laser4.laserActive = true;
	}

	break;
	
	case final.phase2:
	global.FLIGHT = true;
	flex = true;
	
		if toss = true {
		toss = false;
		repeat(3) {
			aa = instance_create_depth(x,y-16,-5,obj_bottleThrow);
			aa.direction = point_direction(x,y,obj_player.x,obj_player.y);
			aa.speed = 5;
			aa.gravity = 0;
		}
		audio_play_sound(sfx_laser2,0,false);
		alarm[0] = bottleCD;
		bottleNum -= 1;
	}	
		if HP <= 0 {
			state = final.phase3;
			alarm[4] = slowRollTime;
		}
	break;
	
	case final.phase3:
	
	flex = false;
	
	global.FLIGHT = false;
	
	if HP2 <= 0 {
			state = final.dead;
			audio_play_sound(sfx_boss_boom,0,false);
			image_blend = c_red;
			alarm[5] = room_speed*5;
			hspd = 0;
			obj_player.sprite_index = spr_wheel_white;
			obj_player.endCut = true;
			with (boss_laser1) {instance_destroy();}
			with (boss_laser2) {instance_destroy();}
			with (boss_laser3) {instance_destroy();}
			with (boss_laser4) {instance_destroy();}
		
	}
		if instance_exists(boss_laser1) {
			boss_laser1.laserActive = false;}
			if instance_exists(boss_laser2) {
			boss_laser2.laserActive = false;}
			if instance_exists(boss_laser3) {
			boss_laser3.laserActive = false;}
			if instance_exists(boss_laser4) {
			boss_laser4.laserActive = false;
			}
	
	if throwing = true {
		if toss = true {
		toss = false;
			aa = instance_create_depth(x,y-16,-5,obj_bottleThrow);
			aa.direction = point_direction(x,y,obj_player.x,obj_player.y);
			aa.speed = 5;
			aa.gravity = 0.25;
			aa.vspeed = choose(-2,-3,-4,-5,-6,-7);
			audio_play_sound(sfx_laser1,0,false);
		alarm[0] = bottleCD;
		bottleNum -= 1;
	}	
		
	}
	
		if !on_ground {
			vspd = approach( vspd, maxFall, grav );
		} else {
			vspd = 0;
		}
		
		if fastRoll = false {
		
			if obj_player.x < x {
				hspd = approach( hspd, -rollSpd, rollAccel );
				image_angle -= hspd;
			}
			
			if obj_player.x > x {
				hspd = approach( hspd, rollSpd, rollAccel );
				image_angle -= hspd;
			}
		} else {
			if obj_player.x < x {
				hspd = approach( hspd, -fastRollSpd, rollAccel );
				image_angle -= hspd;
			}
			
			if obj_player.x > x {
				hspd = approach( hspd, fastRollSpd, rollAccel );
				image_angle -= hspd;
			}
			
		}
		
	break;
	
}