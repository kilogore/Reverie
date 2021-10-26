for (var yy = 0; yy <= yMAX; ++yy) {
    for (var xx = 0; xx <= xMAX; ++xx) {
		draw_sprite_ext(spr, min(max(0, sub_img_index -xx), iMAX-1) , xx*sprW, yy*sprH, 1, 1, 0, col, 1);	
	}
}