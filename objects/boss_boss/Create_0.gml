/// @description Insert description here
// You can write your code in this editor
enum bossState {
	idle,
	jump,
	land,
	tpchoose,
	tpchoose2,
	tp,
	toss,
	crazyToss,
	CD,
	dead
	
}

tpx[0] = 663;
tpy[0] = 6580;
tpx[1] = 663;
tpy[1] = 6484;

tpx[2] = 775;
tpy[2] = 6530;

tpx[3] = 880;
tpy[3] = 6484;
tpx[4] = 880;
tpy[4] = 6580;

tpx[5] = 983;
tpy[5] = 6530;

tpx[6] = 1080;
tpy[6] = 6484;
tpx[7] = 1080;
tpy[7] = 6580;

tplast = 4;
tptp = 4;

HP = 5;

msg = choose(
"FILE [shake]THIS!",
"[shake]MANDATORY OVERTIME!",
"[shake]NO [/shake]BREAKS!",
"YOU'RE [shake]FLYERED!"
);

state = bossState.idle;

tpAMT = 3;
tpCD = room_speed*1;
tossCD = room_speed*2;
crazyTossCD = room_speed*4;


aggroRange = 128;


jumpSpd = -5;
grav = 0.5;



event_inherited();

image_xscale = -1;