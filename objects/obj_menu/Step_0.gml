/// @description Insert description here
// You can write your code in this editor
init_controls();

switch (state) {
	case menuState.start:
		if global.Lp or global.Rp{
			state = menuState.quit;	
			menu_baby.image_xscale*=-1;
			layer_hspeed("BG",-1);
		}
		if global.J {
		if !instance_exists(fx_transition) {
			var aa = instance_create_depth(0,0,-999,fx_transition);
			aa.targetRoom = rm_0_0;
			aa.targetX = 576;
			aa.targetY = 501;
		}
		}
	break;
	
	case menuState.quit:
		if global.Lp or global.Rp{
			state = menuState.start;	
			menu_baby.image_xscale*=-1;
			layer_hspeed("BG",1);
		}
		if global.J {
			game_end();
		}
	break;
	
}

