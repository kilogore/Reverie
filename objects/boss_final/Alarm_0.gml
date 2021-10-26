/// @description Insert description here
// You can write your code in this editor
toss = true;
bottleCD = room_speed*(choose(1,2,3));
if bottleNum <= 0 and state = final.phase1{
	laserOn = true;
	bottleNum = 5;
	alarm[1] = laserDuration;
}