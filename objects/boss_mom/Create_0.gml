/// @description Insert description here
// You can write your code in this editor
enum momState {
	startClean,
	clean,
	startCook,
	cook,
	wanderL,
	wanderR,
	detect
}

state = momState.startClean;
wanderSpd = 1;
sprite_index = npc_mom_turned;

image_speed = 0.2;

drawbb = false;