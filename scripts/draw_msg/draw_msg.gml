// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_msg(_text){
	
var xmargin = 5,ymargin = 38,boxheight = 108,SCREENW = 640,SCREENH = 360,xpad = 5,ypad = 5, outcolor = c_black, incolor = c_white;


draw_sprite(spr_textbox,0,SCREENW/2,ymargin);


//string_length(_text)
	
draw_set_font(fnt_message);
scribble("[fnt_message][fa_center][fa_middle][c_black]" +string(_text) ).draw(SCREENW/2,ymargin+boxheight/2);

}