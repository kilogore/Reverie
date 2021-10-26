/// @description Insert description here
// You can write your code in this editor
life -= decayRate;

if life <= 0 {instance_destroy();}

x += hspd;
y += vspd;

if grav = true {
	vspd = approach( vspd, maxFall, gravStr );   
}