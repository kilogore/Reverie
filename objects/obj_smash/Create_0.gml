/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

enum sm {
	wait,
	set,
	reset
}

state = sm.wait;

smashTime = room_speed*1;
alarm[0] = smashTime;