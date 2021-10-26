/// @description Insert description here
// You can write your code in this editor



switch (state) {
	
	case final.idle:
	if instance_exists(boss_joint) {
		draw_set_color(c_black);
		draw_line_width(x,y,jointx[0],jointy[0],4);	
		draw_line_width(x,y+24,jointx[0],jointy[0],4);	
		draw_line_width(jointx[0],jointy[0],jointx[2],jointy[2],4);	
		//draw_sprite(spr_final_joint,0,jointx[0],jointy[0]);
	}
	
	if instance_exists(boss_joint2) {
		draw_set_color(c_black);
		draw_line_width(x,y,jointx[1],jointy[1],4);	
		draw_line_width(x,y+24,jointx[1],jointy[1],4);	
		draw_line_width(jointx[1],jointy[1],jointx[3],jointy[3],4);	
		//draw_sprite(spr_final_joint,0,jointx[1],jointy[1]);
	}
	break;
	
	case final.phase1:

	if instance_exists(boss_joint) {
		draw_set_color(c_black);
		draw_line_width(x,y,jointx[0],jointy[0],4);	
		draw_line_width(x,y+24,jointx[0],jointy[0],4);	
		draw_line_width(jointx[0],jointy[0],jointx[2],jointy[2],4);	
		//draw_sprite(spr_final_joint,0,jointx[0],jointy[0]);
	}
	
	if instance_exists(boss_joint2) {
		draw_set_color(c_black);
		draw_line_width(x,y,jointx[1],jointy[1],4);	
		draw_line_width(x,y+24,jointx[1],jointy[1],4);	
		draw_line_width(jointx[1],jointy[1],jointx[3],jointy[3],4);	
		//draw_sprite(spr_final_joint,0,jointx[1],jointy[1]);
	}
		
		if laserOn = true {
			draw_laser();
		}
		for (i = 0; i < max_length; i++) {
			xEnd = x + lengthdir_x(i, im);	
			yEnd = y + lengthdir_y(i, im);
			
			length_laser = i;
			
			if (collision_point(xEnd,yEnd,obj_block,0,0) ) {break;}
		}
		draw_line_width_color(x,y,xEnd,yEnd,1,c_red,c_red);	
		
		scribble("[fa_center][c_white]"+string(msg)).draw(x,y-48);

	break;
	
	case final.phase2:
		scribble("[fa_center][c_white]"+string(msg2)).draw(x,y-48);
	break;
	
	case final.phase3:
		if fastRoll = true {
			scribble("[fa_center][c_white]"+string(msg3)).draw(x,y-48);
		} else {
			scribble("[fa_center][c_white]"+string(msg4)).draw(x,y-48);
		}
	break;
	
}

draw_self();