/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if !on_ground {
	vspd = approach( vspd, 3, 0.25 ); 
} else {
	vspd = 0;
}

hspd = approach( hspd, 0, 0.01 );  

