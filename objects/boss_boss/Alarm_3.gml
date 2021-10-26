/// @description Insert description here
// You can write your code in this editor
if tpAMT > 0 {
	
	tplast = tptp;
	tptp = choose(0,1,2,3,4,5,6,7);
	if tplast = tptp {tptp = choose(0,1,2,3,4,5,6,7);}
	x = tpx[tptp];
	y = tpy[tptp];
	
	tpAMT -= 1;
	
	alarm[3] = tpCD;
	audio_play_sound(sfx_tp,0,false);
	repeat(10) {instance_create_depth(x,y,10,part_bossTP);}

	
} else {
	atk = choose(0,0,1);
	switch (atk) {
		case 0:
			state = bossState.toss;
		break;
		case 1:
			state = bossState.crazyToss;
		break;
	}
}
