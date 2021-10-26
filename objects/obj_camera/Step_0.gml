/// @description Insert description here
// You can write your code in this editor

if shake = true {
	var sh = global.shakeAmt;
	x += (xTo - x+random_range(sh,-sh)) / global.shakeControl;
	y += (yTo - y+random_range(sh,-sh)) / global.shakeControl;
} else {
	x += (xTo - x) / 25;
	y += (yTo - y) / 25;
}

if follow != noone {
	xTo = follow.x;
	yTo = follow.y;
}

if spin = true {

	var vm2 = matrix_build_lookat(x+random_range(sp,-sp),y+random_range(sp,-sp),-10,x+random_range(sp,-sp),y+random_range(sp,-sp),0,0,1,0);
	camera_set_view_mat(camera,vm2);
	
}
	
if spin = false {

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera,vm);
	var pm = matrix_build_projection_ortho(640,360,-1,69420);
	camera_set_proj_mat(camera,pm);

}