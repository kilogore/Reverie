/// @description set up
event_inherited();

music_start();
enum mus {
	baby,
	toddler,
	kid,
	teen,
	adult,
	crisis,
	old,
	wheelchair,
	pimp
	
}

depth = 15;

HP = 3;
maxHP = 3;

drawme = true;
sleepytime = false;

canHit = true;
canHurt = true;
hurtSpd = 1.75;
holding = false;
endCut = false;

enum playerState{
	free,
	swing,
	swingSet,
	pause,
	dead
}


//Player stats are defined (so they can be easily tweaked if needed).
#region CONSTANT VARIABLES
	S_GRAVITY       = 0.3;      // Accel. due to gravity				(pixels/step*step)
	
	
	S_RUN_ACCEL[0]     = 0.1;      // baby
	S_RUN_ACCEL[1]     = 0.2;      // toddler
	S_RUN_ACCEL[2]     = 0.3;      // kid
	S_RUN_ACCEL[3]     = 0.3;      // teen (DASHSPD)
	S_RUN_ACCEL[4]     = 0.2;      // adult
	S_RUN_ACCEL[5]     = 0.2;      // crisis
	S_RUN_ACCEL[6]     = 0.1;      // old
	S_RUN_ACCEL[7]     = 0.02;      // wheelchair
	S_RUN_ACCEL[8]     = 0.2;      // pimped
	
	S_RUN_FRIC      = 0.2;      // Friction on the ground				(pixels/step*step)
	S_AIR_ACCEL     = 0.4;      // Accel. from running in the air		(pixels/step*step)
	S_AIR_FRIC      = 0.1;      // Friction in the air					(pixels/step*step)
	S_DASH_ACCEL    =   1;		// Accel. when dashing
	S_JUMP_SPEED    =  -4.2;		// Jump Speed
	S_JUMP_BUFFER   =  15;		// Forgiveness running off of a platform (number of "steps" [60 in a second])
	S_DJUMP_SPEED   =  -4.2;      // Double-Jump Speed
	S_FLY_SPD       =  -1.75;      // Fly Speed
	bounceSpd = 3;
	
	fuel_MAX = 80;
	fuel = fuel_MAX;
	fuel_USE = 1;
	fuel_RECHARGE = 5;
	
	grappleCDR = 5;
	canGrab = true;
	
	S_MAX_H[0]    = 0.5;      // baby
	S_MAX_H[1]    =   1;      // toddler
	S_MAX_H[2]    =   1;      // kid
	S_MAX_H[3]    =   1;      // teen (DASHSPD)
	S_MAX_H[4]    =   1;      // adult
	S_MAX_H[5]    =   1;      // crisis
	S_MAX_H[6]    =   1;      // old
	S_MAX_H[7]    =   1;      // wheelchair
	S_MAX_H[8]    =   1;      // pimped
	
	S_MAX_H_RUN[0]    = 0.5;      // baby
	S_MAX_H_RUN[1]    =   1;      // toddler
	S_MAX_H_RUN[2]    =   3;      // kid
	S_MAX_H_RUN[3]    =   3;      // teen (DASHSPD)
	S_MAX_H_RUN[4]    =   3;      // adult
	S_MAX_H_RUN[5]    =   2;      // crisis
	S_MAX_H_RUN[6]    =   2;      // old
	S_MAX_H_RUN[7]    =   1;      // wheelchair
	S_MAX_H_RUN[8]    =   3;      // pimped

	S_DASH_V        =   2;      // Max dashing (vertical) speed
	S_MAX_V         =   5;      // Max falling (vertical) speed
	S_SLOPE_SLOW    = 1.5;      // Decceleration while climbing slopes
	S_KNOCKBACK     =   4;
#endregion

// NON-CONSTANT VARIABLES   (variables that change during the game)
candj = false;				// Whether the player can currently double jump
buff = S_JUMP_BUFFER;		// the variable that will test for the buffer

state = playerState.free;

// GFX
image_speed = 0;