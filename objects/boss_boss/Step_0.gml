/// @description Insert description here
// You can write your code in this editor
event_inherited();

if !on_ground {
	vspd = approach( vspd, 5, 0.25);
} else {
	hspd = approach( hspd, 0, 0.1);
}

if obj_player.x < x {image_xscale = -1;}
if obj_player.x > x {image_xscale =  1;}

if HP <= 0 {
	state = bossState.dead;
}

switch (state) {
	
	case bossState.CD:
		sprite_index = npc_bossCD;
	break;
	
	case bossState.idle:
	image_speed =0;
		if distance_to_object(obj_player) < aggroRange {
			state = bossState.jump;
		}
	break;
	
	case bossState.tpchoose:
	image_speed = 0;
		alarm[3] = tpCD;
		tpAMT = choose(3,3,5);
		state = bossState.tp;
	break;
	
	case bossState.tpchoose2:
	image_speed = 0;
		alarm[3] = 1;
		tpAMT = choose(3,3,5);
		state = bossState.tp;
	break;
	
	case bossState.tp:
		//animate?
		image_speed = 0.3;
		sprite_index = npc_bossTeleport;
	break;
	
	case bossState.toss:
				image_speed = 0.5;
		sprite_index = npc_boss_throw;
		
		repeat(3) {
			throwH = choose(3,4,5,6,7);
			throwV = choose(2,3,4,5);
		var aa = instance_create_depth(x,y,10,boss_paper);	
			aa.hspd = throwH*image_xscale;
			aa.vspd = -throwV;
		}
		msg = choose(
		"FILE [shake]THIS!",
		"[shake]MANDATORY[/shake] OVERTIME!",
		"[shake]NO[/shake] BREAKS!",
		"YOU'RE [shake]FLYERED!",
		"PAID IN [shake]EXPOSURE[/shake]",
		"MORE LIKE PT[shake]NO[/shake]"
		);
			
			state = bossState.CD;
			alarm[0] = tossCD; 
			audio_play_sound(sfx_papertoss,0,false);
			
		
	break;
	
	case bossState.crazyToss:
				image_speed = 0.5;
		sprite_index = npc_boss_throw;
			repeat(15) {
			throwH = (choose(1,-1) * choose(3,4,5,6,7) );
			throwV = choose(3,4,5,6,7);
		var aa = instance_create_depth(x,y,10,boss_paper);	
			aa.hspd = throwH*image_xscale;
			aa.vspd = -throwV;
			
			}
		msg = choose(
		"FILE [shake]THESE!",
		"[shake]UNPAID[/shake] INTERNSHIP!",
		"[shake]MINIMUM[/shake] WAGE!",
		"PAID IN [shake]EXPOSURE[/shake]",
		"MORE LIKE PT[shake]NO[/shake]"
		);
			
			state = bossState.CD;
			alarm[0] = crazyTossCD;
			audio_play_sound(sfx_papertoss,0,false);
		
	break;
	
	case bossState.jump:
		image_speed = 0.1;
		sprite_index = npc_boss;

		if place_meeting(x,y,boss_jumper) {
			vspd = jumpSpd;
			state = bossState.land;
		}
	break;
	
	case bossState.land:
		image_speed = 0;
		image_index = 1;
		sprite_index = npc_boss;
		hspd = 0;
		if on_ground {
			state = bossState.tpchoose;
			var i = 0;
			repeat(50) {
				instance_create_depth(464+i,6624,10,obj_spike);
				i += 16;
			}
		}
		// cooldown
	break;
	
	case bossState.dead:
		sprite_index = npc_bossDead;
		
		if !instance_exists(boss_door) {
			var aa = instance_create_depth(1216,6606,15,boss_door);
			aa.targetX = 4024;
			aa.targetY = 532
		}
		if instance_exists(obj_spike) {
			instance_destroy(obj_spike);
		}
		
	break;
	
}