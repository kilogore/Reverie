/// @description Insert description here
// You can write your code in this editor

if global.age >= 5 {
	if !instance_exists(obj_bottle) {
		
		aa = instance_create_depth(x+hspd,y-4,-5,obj_bottle);
		aa.direction = point_direction(x,y,mouse_x,mouse_y);
		aa.speed = 5;
		aa.gravity = 0.25;
	}
	
}