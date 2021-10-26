/// @description Insert description here
// You can write your code in this editor
enum coolState {
	startWater,
	water,
	drink,
	startComp,
	comp,
	wanderL,
	wanderR,
	detect
}

state = coolState.startWater;
wanderSpd = 1;
sprite_index = npc_water_turned;

image_speed = 0.2;

msg = choose(
"FILE [shake]THESE!",
"[shake]UNPAID[/shake] INTERNSHIP!",
"[shake]MINIMUM[/shake] WAGE!",
"PAID IN [shake]EXPOSURE[/shake]",
"MORE LIKE PT[shake]NO[/shake]"
);
