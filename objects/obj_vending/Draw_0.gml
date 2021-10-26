/// @description Insert description here
// You can write your code in this editor
draw_self();

if draw = true and obj_player.HP != obj_player.maxHP {
	draw_sprite(spr_heal,frame/4,x,y-48);
	
	if frame <= framelast {
		frame++;
	} else {
		frame = 0;
	}
	
} else {
	frame = 0;
}