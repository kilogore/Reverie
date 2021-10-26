/// @description Insert description here
// You can write your code in this editor
vspd = S_JUMP_SPEED;

if canHurt = true {
	canHurt = false;
	if global.age > 3 and global.age <= 4 {candj = true;}
	player_hurt(1);
	alarm[1] = hurtSpd*30;
}