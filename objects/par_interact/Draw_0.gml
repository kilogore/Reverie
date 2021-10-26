/// @description Insert description here
// You can write your code in this editor
if !pickup {
	draw_self();
} else {
	draw_sprite(sprite_index,image_index,obj_player.x+(4*obj_player.image_xscale),obj_player.y-4);
}


if distance_to_object(obj_player) < pickUpRange and !pickup {draw_sprite(spr_notice,0,x,y-8);}