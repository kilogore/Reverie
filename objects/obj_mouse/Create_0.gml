/// @description Insert description here
// You can write your code in this editor
enum mouseState {
	paceR,
	paceL,
	aggro,
	leap,
	dead
}

event_inherited();

maxFall = 5;
walkSpd = 0.5;
aggroSpd = 1.5;
leapRange = 64;
leapSpd = -6;
grav = 0.5;
aggroRange = 48;

image_speed = 0.3;

state = choose(mouseState.paceR,mouseState.paceL);