/// @description Insert description here
// You can write your code in this editor
switch (state) {
	
	case momState.startClean:
		alarm[0] = room_speed*(choose(1,1.5,2,2.5,3));
		state = momState.clean;
	break;
	
	
	case momState.clean:
		sprite_index = npc_mom_turned;
		// play cleaning sound effect?
	break;
	
	case momState.wanderL:
	
	sprite_index = npc_mom;
	image_xscale = -1;
		if x > xstart - (16*4) {
			x -= wanderSpd;
			
			if distance_to_object(obj_player) <= 128 and obj_player.hspd != 0 and obj_player.x < x and obj_player.y >= y{
				state = momState.detect;
			}
			
		} else {
			state = momState.startCook;	
		}
	break;
	
	case momState.startCook:
		alarm[1] = room_speed*(choose(1,1.5,2,2.5,3));
		state = momState.cook;
	break;
	
	
	case momState.cook:
		sprite_index = npc_mom_turned;
		// play cooking sound effect?
	break;
	
	case momState.wanderR:
	
	sprite_index = npc_mom;
	image_xscale = 1;
		if x < xstart {
			x += wanderSpd;
			
			if distance_to_object(obj_player) <= 128 and obj_player.hspd != 0 and obj_player.x > x and obj_player.x < 1448 and obj_player.y >= y{
				state = momState.detect;
			}
			
		} else {
			state = momState.startClean;	
		}
	break;
	
	case momState.detect:
	
		if !audio_is_playing(sfx_gasp) and !instance_exists(fx_deathtransition) {audio_play_sound(sfx_gasp,0,false);}
	
		sprite_index = npc_mom;
		global.pause = true;
		obj_camera.follow = boss_mom;
		obj_player.hspd = 0;
		obj_player.image_speed = 0;
		
		if obj_player.x < x {
			x -= wanderSpd;	
		}
		if obj_player.x > x {
			x += wanderSpd;
		}
		
		// play cooking sound effect?
	break;
	
	
}