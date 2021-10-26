/// @description Insert description here
// You can write your code in this editor
if global.INTERACT and distance_to_object(obj_player) < pickUpRange and canPickup {
	pickup = true;
	obj_player.holding = true;
	audio_play_sound(sfx_catch,0,false);
}

if pickup = true {
	x = obj_player.x+(4*obj_player.image_xscale);
	y = obj_player.y-4;
	
	if global.THROW {
		
		hspd = 4*obj_player.image_xscale;
		vspd = throwV;
		pickup = false;
		obj_player.holding = false;
		canHurtBoss = true;
		
		audio_play_sound(sfx_throw,0,false);
	}
	
}

event_inherited();

if !on_ground {
	vspd = approach( vspd, S_MAX_V, S_GRAV );
	}
else {
	 hspd = approach( hspd, 0, 0.5 );
}