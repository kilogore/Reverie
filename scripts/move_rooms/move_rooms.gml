function move_rooms(arg){

	room_goto(asset_get_index(string("rm_"+string(global.Xstage)+"_"+string(global.Ystage))));

	if arg = "right" {
		obj_player.x = 1;
		obj_player.y = y;
	}

	if arg = "left" {
		obj_player.x = room_width-1;
		obj_player.y = y;
	}

	if arg = "up" {
		obj_player.y = room_height-1;
		obj_player.x = x;
	}

	if arg = "down" {
		obj_player.y = 1;
		obj_player.x = x;
	}


}