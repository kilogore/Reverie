// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_money(amount){
	repeat (amount) {
		instance_create_depth(x,y-5,10,obj_coin);	
	}
}