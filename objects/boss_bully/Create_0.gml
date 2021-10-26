/// @description Insert description here
// You can write your code in this editor
enum bullyState {
	idle,
	aggro,
	charge,
	dash,
	cooldown,
	hurt,
	dead
}

HP = 3;

state = bullyState.idle;
wanderSpd = 1;
dashSpd = 3;
knockbackSpd = 5;
knockupSpd = 3;
dashDuration = 1.25;
chargeTime = 2;
cooldownTime = 2.5;

sprite_index = npc_bully;

image_speed = 0;

dir = 1;
