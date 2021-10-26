/// @description Insert description here
// You can write your code in this editor

if HP <= 0 {state = bullyState.dead;}

switch (state) {
	
	case bullyState.idle:
		sprite_index = npc_bully;
		if distance_to_object(obj_player) <= 256 {
			state = bullyState.aggro;
		}
	break;
	
	case bullyState.aggro:
	
		BossBlock.active = true;
	
		sprite_index = npc_bully;

		if x < obj_player.x {
			x += wanderSpd;	
			image_speed = 0.2;
			dir = 1;
		}
		
		if x > obj_player.x {
			x -= wanderSpd;	
			image_speed = 0.2;
			dir = -1;
		}
		
		if distance_to_object(obj_player) <= 48 {
			state = bullyState.charge;
			alarm[0] = 30*chargeTime;
		}
		
	break;
	
	case bullyState.charge:
		sprite_index = npc_bully_charge;
		image_speed = 0;
	break;
	
	case bullyState.dash:
		sprite_index = npc_bully_dash;
		if !place_meeting(x+dashSpd*dir,y,obj_block) {
			x += dashSpd*dir;
		} else {
			dir = -dir;	
		}
		image_speed = 0.6;
	break;
	
	case bullyState.cooldown:
		sprite_index = npc_bully_cooldown;
		image_speed = 0;
	break;
	
	case bullyState.hurt:
		sprite_index = npc_bully_hurt;
		image_speed = 0;
	break;
	
	case bullyState.dead:
		if instance_exists(BossBlock) {instance_destroy(BossBlock);}
		sprite_index = npc_bully_dead;
		image_speed = 0;
	break;
	
	
}