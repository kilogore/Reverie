/// @description Draw bihhhhh




if state = playerState.swing {
	draw_set_color(c_black);
	draw_line_width(grappleX,grappleY,x,y,2);	
	
}

if state = playerState.swingSet {
	draw_set_color(c_black);
	draw_line_width(grappleX,grappleY,x,y,3);	
	
}

//draw_text(x+20,y-40,"FUEL: "+string(fuel) );


draw_set_color(c_black);
//draw_text(x,y-40,global.age);

if drawme = true {

draw_self();

if sleepytime = false and endCut = false{

switch (global.age) {
	
	case 0:
	sprite_index = spr_baby;
	mask_index   = msk_baby;
	break;
	
	case 1:
	sprite_index = spr_toddler;
	mask_index   = msk_toddler;
	break;
	
	case 2:
	sprite_index = spr_kid;
	mask_index   = msk_kid;
	break;
	
	case 3:
	sprite_index = spr_teen;
	mask_index   = msk_teen;
	break;
	
	case 4:
	sprite_index = spr_adult;
	mask_index   = msk_adult;
	break;
	
	case 5:
	sprite_index = spr_crisis;
	mask_index   = msk_crisis;
	break;
	
	case 6:
	sprite_index = spr_old;
	mask_index   = msk_old;
	break;
	
	case 7:
	sprite_index = spr_wheelchair;
	mask_index   = msk_wheelchair;
	break;
	
	case 8:
	sprite_index = spr_wheelchairBoost;
	mask_index   = msk_wheelchair;
	break;
	
}
}

} else {

}