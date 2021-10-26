/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


if !on_ground {
	vspd = approach( vspd, maxFall, grav );
	}
else {
	 vspd = 0;
}

switch (state) {
	case mouseState.paceR:
			image_xscale = 1;
		hspd = image_xscale*walkSpd;
		if place_meeting(x+walkSpd*2,y,obj_block) {
			state = mouseState.paceL;
		}
		
		if distance_to_object(obj_player) <= aggroRange {
			state = mouseState.aggro;	
		}
		
	break;
	case mouseState.paceL:
			image_xscale = -1;
		hspd = image_xscale*walkSpd;
		if place_meeting(x-walkSpd*2,y,obj_block) {
			state = mouseState.paceR;
		}
		
		if distance_to_object(obj_player) <= aggroRange {
			state = mouseState.aggro;	
		}
		
	break;
	
	case mouseState.aggro:
	
		if obj_player.x < x {
			hspd = -aggroSpd;
			image_xscale = -1;
			
			var ii = choose(0,1,2,3);
			
			if distance_to_object(obj_player) <= leapRange and on_ground and ii = 3 {
				vspd = leapSpd;
			}
		} else {
			hspd = aggroSpd;
			image_xscale = 1;
			
			var ii = choose(0,1,2,3);
			
			if distance_to_object(obj_player) <= leapRange and on_ground and ii = 3 {
				vspd = leapSpd;
			}
		}
		
	break;
	
	case mouseState.dead:
		hspd = 0;
		sprite_index = spr_mouse_dead;
	break;
}