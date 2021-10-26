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
			BossBlock2.active = true;
			
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
			var aa = instance_create_depth(x,y,10,objToThro);	
			aa.hspd = throwH;
			aa.vspd = throwV;
			aa.canHurtPlayer = true;
			
			haveBall = false;
			
		} else {
			state = dodgeState.paceR;
			alarm[0] = room_speed*3;
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
	if instance_exists(BossBlock2) {instance_destroy(BossBlock2);}
		sprite_index = npc_dodge_dead;
			image_speed = 0;
	break;
	
}