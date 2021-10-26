/// @description Insert description here
// You can write your code in this editor

if state = "alive" {

var aa=instance_create_depth(x,y-3,9,obj_bottleThrow);
aa.direction = point_direction(x,y,obj_player.x,obj_player.y);
aa.speed = 5;

alarm[0] = timer*room_speed;

}