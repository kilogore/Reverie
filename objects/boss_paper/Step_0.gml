/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
y += vspd;
x += hspd;

//if !on_ground {
	vspd = approach( vspd, 5, 0.25);
	//}
//else {
	 //instance_destroy();
//}

