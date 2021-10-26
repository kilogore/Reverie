/// @description Insert description here
// You can write your code in this editor

if HP <= 0 {
	state = dodgeState.dead;
}

throwH = 7*image_xscale;

if state != dodgeState.dead {
if obj_player.x > x {image_xscale = 1;}
if obj_player.x < x {image_xscale =-1;}
}

switch (state) {
	
	case dodgeState.idle:
		if distance_to_object(obj_player) < aggroRange {
			state = dodgeState.aggro;	
			//BossBlock2.active = true;
			
			alarm[1] = chargeTime;
			sprite_index = npc_dodge;
			image_speed = 0;
		}
	break;
	
	case dodgeState.aggro:
		sprite_index = npc_dodge_throw;
			image_speed = 0;
	break;
	
	case dodgeState.thro:
		if haveBall = true {
			
			aa = instance_create_depth(x,y-4,-5,objToThro);
			aa.direction = point_direction(x,y,obj_player.x,obj_player.y);
			aa.speed = 5;
			aa.gravity = 0.25;
			
			haveBall = false;
			
		} else {
			state = dodgeState.paceR;
			alarm[0] = room_speed*(choose(0.75,1,1.5,2));
				sprite_index = npc_dodge;
			image_speed = 0;
		}
	break;
	
	case dodgeState.paceR:
		if x < xstart + paceRange {
			x += walkSpd;
			sprite_index = npc_dodge;
			image_speed = 0.3;
		} else {
			state = dodgeState.paceL;
		}
	break;
	
	case dodgeState.paceL:
		if x > xstart - paceRange {
			x -= walkSpd;
			sprite_index = npc_dodge;
			image_speed = 0.3;
		} else {
			state = dodgeState.paceR;
		}
	break;
	
	case dodgeState.dead:
	//if instance_exists(BossBlock2) {instance_destroy(BossBlock2);}
		sprite_index = npc_dodge_dead;
			image_speed = 0;
			
			if boss_bullyBar.state = bullyState.dead {
				if !instance_exists(obj_bardoor) {
					var aa = instance_create_depth(1390,1200,9,obj_bardoor);
					aa.targetX = 4167;
					aa.targetY = 532;
				}
			}
	break;
	
}