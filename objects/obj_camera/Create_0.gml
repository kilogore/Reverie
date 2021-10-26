/// @description Insert description here
// You can write your code in this editor
camera = camera_create();

depth = -10;

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(640,360,-100,69420);

camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);

// screen shake mats
var sk = 3;
var vm2 = matrix_build_lookat(x+random_range(sk,-sk),y+random_range(sk,-sk),-10,x+random_range(sk,-sk),y+random_range(sk,-sk),0,0,1,0);
var pm2 = matrix_build_projection_ortho(640,360,-100,69420);

view_camera[0] = camera;

follow = obj_player;

xTo = x;
yTo = y;


shake = false;
spin = false;

color = c_black;

	horrifi_enable(true);

	horrifi_bloom_set(true,10,0.30,0.5);
	horrifi_chromaticab_set(false,0.64);
	horrifi_scanlines_set(true,0.10);
	horrifi_vhs_set(true,0.10);
	horrifi_vignette_set(true,0.30,0.87);
	horrifi_crt_set(false,2);
	horrifi_noise_set(true,0.2);