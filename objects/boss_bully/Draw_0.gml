/// @description Insert description here
// You can write your code in this editor
draw_self();

if state = bullyState.charge {
	draw_sprite(spr_notice,0,x,y-16);
}

image_xscale = dir;
/*
switch (state) {
	
	case bullyState.idle:

	draw_text(x,y-40,"IDLE");
	break;
	
	case bullyState.aggro:

	draw_text(x,y-40,"AGGRO");
		
	break;
	
	case bullyState.charge:
		draw_text(x,y-40,"CHARGE");
	break;
	
	case bullyState.dash:
		draw_text(x,y-40,"DASH");
	break;
	
	case bullyState.cooldown:
		draw_text(x,y-40,"CD");
	break;
	
	
}