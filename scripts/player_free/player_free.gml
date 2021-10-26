function player_free(){
	
	

	
	
	#region setting acceleration and friction
	var accel, fric;
	if (on_ground) {					// if we are on the ground
	    accel = S_RUN_ACCEL[global.age];			// set acceleration to on ground value
	    fric = S_RUN_FRIC;				// set friction to on ground value
		
	if place_meeting(x,y+1,obj_hplat) {
		 hspd = obj_hplat.hspd;
		 image_speed = 0;
	}
	
	if place_meeting(x,y+1,obj_vplat) {
		 vspd = obj_vplat.vspd;
		 image_speed = 0;
	}
		
	} else {							// if we are in the air
	    accel = S_AIR_ACCEL;			// set acceleration to air value
	    fric = S_AIR_FRIC;				// set friction to air value
	}
	#endregion
	
	if hspd != 0 {
		image_speed = global.age/4+0.25;	
		
		if on_ground {
			if hspd > 2.9 {
			repeat(2) {instance_create_depth(x-(4*image_xscale),y+12,9,part_runR);}
			}
			if hspd < -2.9 {
			repeat(2) {instance_create_depth(x-(4*image_xscale),y+12,9,part_runL);}
			}
		}
	} else {
		image_speed = 0;	
		
	}

// converyor belts
if place_meeting(x,y+1,obj_belt_r) {
	hspd = approach( hspd, S_MAX_H[global.age], accel );	
}
if place_meeting(x,y+1,obj_belt_l) {
	hspd = approach( hspd, -S_MAX_H[global.age], accel );	
}
	
	
	if (global.R) {					//Pressing right
	   
	    //First add friction if currently running left
	    if (hspd < 0) { hspd = approach( hspd, 0, fric ); }
	    
			if place_meeting(x,y+1,obj_belt_l) {
				hspd = approach( hspd, S_MAX_H[global.age]/2, accel );
			}
		
		if !global.RUN {
		// actually run right 
			hspd = approach( hspd, S_MAX_H[global.age], accel );
			image_xscale = 1;
		} else {
			hspd = approach( hspd, S_MAX_H_RUN[global.age], accel );
			image_xscale = 1;
		}
		
		if global.age >= 1 and global.age <= 4 and place_meeting(x+hspd,y,obj_climb) {
			on_ground = true;
			vspd = -1;
		}
	
	} else if (global.L) {			//Pressing left
	   
	    //First add friction if currently running right
	    if (hspd > 0) { hspd = approach( hspd, 0, fric ); }
		
			if place_meeting(x,y+1,obj_belt_r) {
				hspd = approach( hspd, -S_MAX_H[global.age]/2, accel );
			}
	    
		if !global.RUN {
		// actually run left
			hspd = approach( hspd, -S_MAX_H[global.age], accel );
			image_xscale = -1;
		} else {
			hspd = approach( hspd, -S_MAX_H_RUN[global.age], accel );
			image_xscale = -1;

		}
		
		if global.age >= 1 and global.age <= 4 and place_meeting(x+hspd,y,obj_climb) {
			on_ground = true;
			vspd = -1;
		}
	
	} else {							// if we are not pressing left OR right
	    
		//Slow us to a stop based on friction
		if !place_meeting(x,y+1,obj_belt_l) and !place_meeting(x,y+1,obj_belt_r) {
			hspd = approach( hspd, 0, fric );
		}
	
	}
	
	if global.age = 8 {
		if global.JHOLD and fuel > 0 {
			fuel -= fuel_USE;
			if place_meeting(x,y,obj_fanDOWNonoff) {
				vspd = S_FLY_SPD/2;
			} else {
				vspd = S_FLY_SPD;
			}
			
			repeat(3) {
				instance_create_depth(x-(7*image_xscale),y+10,9,part_booster);
			}
			repeat(3) {
				instance_create_depth(x-(7*image_xscale),y+10,9,part_booster_unltd);
			}
			
		}
		
	}
	
	if global.FLIGHT = true {
		if global.JHOLD {
			vspd = S_FLY_SPD;
			repeat(3) {
				instance_create_depth(x-(7*image_xscale),y+10,9,part_booster);
			}
			repeat(3) {
				instance_create_depth(x-(7*image_xscale),y+10,9,part_booster_unltd);
			}
		}
		
	}
	
	
	if (on_ground) {					// if we are on the ground
	
		if global.age = 3 or global.age = 4 {
			candj = true;					// then we get our double jump back
		} else {
			candj = false;	
			
			if fuel < fuel_MAX {
				fuel += fuel_RECHARGE;
			} else {
				fuel = fuel_MAX;	
			}
			
		}
		buff = S_JUMP_BUFFER;			// AND we reset our jump buffer back to full
	   
	   
	   if global.age >= 2 and global.age <= 5 {
	   
			//Jumping
			 if (global.J) {				// if we press the jump key
				vspd = S_JUMP_SPEED;		// we set our vertical speed to the jump speed
				audio_play_sound(sfx_jump,0,false);
				
				repeat(3) {
					instance_create_depth(x,y+10,9,part_booster);
				}
				
			}
		
	   }
	
	} else {							// if we are NOT on the ground
		
		if place_meeting(x,y+1, obj_quicksand) {
			//Jumping
			 if (global.J) {				// if we press the jump key
				vspd = S_JUMP_SPEED;		// we set our vertical speed to the jump speed
				audio_play_sound(sfx_jump,0,false);
				
				repeat(3) {
					instance_create_depth(x,y+10,9,part_booster);
				}
			}
			vspd = approach( vspd, S_MAX_V/3, S_GRAVITY );  
		} else {
			vspd = approach( vspd, S_MAX_V, S_GRAVITY );  
		}
		
		buff -= 1; // slowly decrease how much is left in the buffer
		
	    #region Double Jumping AND testing for jump-buffer
			// if we press the jump key and we have our double-jump still
			if (global.J && candj) and buff < 0 {	
			    candj = false;				// take away that double-jump
			    vspd = S_DJUMP_SPEED;		// make us double jump
				audio_play_sound(sfx_djump,0,false);
				
				repeat(3) {
					instance_create_depth(x,y+10,9,part_booster);
				}
			}
			
			if global.age >= 2 and global.age <= 5 {
				if (global.J) and buff >= 0 and candj = true {	
				    vspd = S_JUMP_SPEED;		// make us do our first jump
					audio_play_sound(sfx_jump,0,false);
					
					repeat(3) {
						instance_create_depth(x,y+10,9,part_booster);
					}
				}
			}
		#endregion
	}
	
	
	
}