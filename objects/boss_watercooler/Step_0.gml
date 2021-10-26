/// @description Insert description here
// You can write your code in this editor
switch (state) {
	
	case coolState.startWater:
		alarm[2] = room_speed*(choose(1,2,3));
		state = coolState.water;
	break;
	
	
	case coolState.water:
		sprite_index = npc_water_turned;
		// play cleaning sound effect?
	break;
	
	case coolState.drink:
		sprite_index = npc_water_drink;
		// play cleaning sound effect?
		
		
		if distance_to_object(obj_player) <= 32 {
			state = coolState.detect;
		}
	break;
	
	case coolState.wanderL:
	
	sprite_index = npc_water;
	image_xscale = -1;
		if x > xstart - (16*7.5) {
			x -= wanderSpd;
			
			if distance_to_object(obj_player) <= 128 and obj_player.y > y-4 and obj_player.x < x{
				state = coolState.detect;
			}
			
		} else {
			state = coolState.startComp;	
		}
	break;
	
	case coolState.startComp:
		alarm[1] = room_speed*(choose(1,1.5,2,2.5,3));
		state = coolState.comp;
	break;
	
	
	case coolState.comp:
		sprite_index = npc_water_turned;
		// play cooking sound effect?
	break;
	
	case coolState.wanderR:
	
	sprite_index = npc_water;
	image_xscale = 1;
		if x < xstart {
			x += wanderSpd;
			
			if distance_to_object(obj_player) <= 128 and obj_player.y > y-4 and obj_player.x < 710 {
				state = coolState.detect;
			}
			
		} else {
			state = coolState.startWater;	
		}
	break;
	
	case coolState.detect:
	
	if !audio_is_playing(sfx_gasp2) and !instance_exists(fx_transition) {audio_play_sound(sfx_gasp2,0,false);}
		sprite_index = npc_water;
		global.pause = true;
		obj_camera.follow = boss_watercooler;
		obj_player.hspd = 0;
		obj_player.image_speed = 0;
		
		if obj_player.x < x {
			x -= wanderSpd;	
			image_xscale = -1;
		}
		if obj_player.x > x {
			x += wanderSpd;
			image_xscale = 1;
		}
		
		// play cooking sound effect?
	break;
	
	
}