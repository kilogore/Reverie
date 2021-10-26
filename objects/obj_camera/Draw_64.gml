/// @description Insert description here
// You can write your code in this editor
	horrifi_set();
	draw_surface(application_surface, 0, 0);
	horrifi_reset();
var i = 1;
repeat (obj_player.maxHP) {
	if i <= obj_player.HP {draw_sprite_ext(gui_heart,0,10+(32*i),10,2,2,0,c_white,1);}
	if i > obj_player.HP {draw_sprite_ext(gui_heart,1,10+(32*i),10,2,2,0,c_white,1);}
	if i < obj_player.maxHP {i += 1;}
	
}


switch (global.age) {
	
	case 0:
		draw_sprite_ext(spr_diaper,0,20,20,2,2,0,c_white,1);
	break;
	
	case 1:
		draw_sprite_ext(spr_babybottle,0,18,18,2,2,0,c_white,1);
	break;
	
	case 2:
		draw_sprite_ext(spr_lollipop,0,8,4,2,2,0,c_white,1);
	break;
	
	case 3:
		draw_sprite_ext(spr_phone,0,8,4,2,2,0,c_white,1);
	break;
	
	case 4:
		draw_sprite_ext(spr_grad,0,6,4,2,2,0,c_white,1);
	break;
	
	case 5:
		draw_sprite_ext(spr_bottleGUI,0,20,20,2,2,0,c_white,1);
	break;
	
	case 6:
		draw_sprite_ext(spr_diaper,0,20,20,2,2,0,c_white,1);
	break;
	
	case 7:
		draw_sprite_ext(spr_diaper,0,20,20,2,2,0,c_white,1);
	break;
	
	case 8:
		draw_sprite_ext(spr_booster,0,20,20,2,2,0,c_white,1);
	break;
	
}