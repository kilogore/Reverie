/// @description Insert description here
// You can write your code in this editor
if active = true {
	y -= ascension;
	ascension *= 1.02;
	
	repeat(3) {
		instance_create_depth(x,y,100,part_booster);
	}
}