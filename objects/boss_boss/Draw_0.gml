/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_red);

if hspd >0 {image_xscale = 1;} else {image_xscale = -1;}


switch (state) {
	
		case bossState.toss:
	scribble("[fa_center][c_black]"+string(msg)).draw(x,y-24);
	break;
		case bossState.crazyToss:
	scribble("[fa_center][c_black]"+string(msg)).draw(x,y-24);
	break;
	
		case bossState.CD:
	scribble("[fa_center][c_black]"+string(msg)).draw(x,y-24);
	break;

	
}