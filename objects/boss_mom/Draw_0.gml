/// @description Insert description here
// You can write your code in this editor
draw_self();

if state = momState.detect {
	draw_sprite(spr_notice,0,x,y-16);
}

if drawbb = true {
	draw_sprite_ext(spr_toddler,0,x+(4*image_xscale),y-8,image_xscale,1,0,c_white,1);	
}