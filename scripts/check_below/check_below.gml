function check_below() {
	//Returns true if the object is standing on solid ground
	//(including jump-thru platforms), false otherwise.
	
	//An object is on solid ground if:
	// 1. there is an obj_block directly below it
	//  OR
	// 2.   a. there is an obj_topblock directly below it
	//          AND
	//      b. there is not an obj_topblock inside it

return place_meeting( x, y+1, obj_block )
    or (place_meeting( x, y+1, obj_topblock ) and !place_meeting( x, y, obj_topblock ));

}
