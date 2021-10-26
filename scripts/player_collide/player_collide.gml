/// @description playerCollision()
/// @function playerCollision
function player_collision() {
	//Handles player collision with solids, topsolids and slopes

	// Solids //

	//Floor
	if place_meeting(x, y+vspeed+1, obj_block) && vspeed > 0   //If there is a solid below us and if we are moving down
	{
	    closestSolid = instance_place(x, y+vspeed+1, obj_block); //Gets the solid we are colliding with
	    vspeed = 0;                                             //Vertical speed is zero
    
	    y = closestSolid.y - 16;                                //Only to make sure we are exactly on the ground
	    ground = true;      //We are on the ground
		spin = 0;
	}

	//Wall
	closestWall = instance_place(x+global.vel+sign(global.vel), y, obj_block);  //Gets the wall (solid) we are colliding with

	if place_meeting(x+global.vel+sign(global.vel), y, obj_block) && closestWall.canWall == true   //If there is a solid on the left or right of us and if it can function as a wall
	{
	    global.vel = 0;
	}

	//Ceiling
	if place_meeting(x, y+vspeed-1, obj_block) && vspeed < 0     //If there is a solid on top of us and if we are moving up
	{
	    vspeed = 0;                 //Vertical speed is zero
	}



	// Topsolids // (Jump-thru/one-way platforms)

	if place_meeting(x, bbox_bottom+vspeed, obj_topblock) && place_meeting(x, y+vspeed+1, obj_topblock)
	 && vspeed > 0   //If there is a topsolid below us and if we are moving down
	{
	    closestTopSolid = instance_place(x, y+vspeed+1, obj_topblock);               //Gets the topsolid we are colliding with
	    vspeed = 0;                                                                 //Vertical speed is zero
    
	    y = closestTopSolid.y - 16;                                                 //Only to make sure we are exactly on the ground
	    ground = true;    
		spin = 0;//We are on the ground
	}



	// Slopes //

	//Moving up on a slope
	while place_meeting(x, y, p_slope) && vspeed >= 0   //If we are inside a slope
	{
	    y -= 1;                                     //Push us up
	    ground = true;                              //We are on the ground
		spin = 0;
	    vspeed = 0;                                 //Our vertical movement speed is zero
	}

	//Moving down on a slope
	while place_meeting(x, bbox_bottom, p_slope) && !place_meeting(x, y+1, p_slope) && vspeed >= 0   //If there is a slope below us, but we are not standing on it
	{
	    y += 1;                                     //Push us down
	    ground = true;                              //We are on the ground
		spin = 0;
	    vspeed = 0;                                 //Our vertical movement speed is zero
	}

	//Going slower when moving up slopes, going faster when moving down slopes
	if place_meeting(x, bbox_bottom+1, obj_slopeR) //The regular RSlope
	{
	    if global.vel > 0                   //If we are moving right
	    {
	        slowSlope = true;                   //We accelerate slower
	        fastSlope = false;
	        slopeAmount = 2;
	    }
	    else if global.vel < 0              //If we are moving left
	    {
	        fastSlope = true;                   //We accelerate faster
	        slowSlope = false;
	        slopeAmount = 2;
	    }
	    else
	    {
	        fastSlope = false;              //We are not affected by the slope when we are standing still
	        slowSlope = false;
	        slopeAmount = 0;
	    }
	}
	else if place_meeting(x, bbox_bottom+1, obj_slopeRLong) //The long RSlope
	{
	    if global.vel > 0                   //If we are moving right
	    {
	        slowSlope = true;                   //We accelerate slower
	        fastSlope = false;
	        slopeAmount = 1.5;
	    }
	    else if global.vel < 0              //If we are moving left
	    {
	        fastSlope = true;                   //We accelerate faster
	        slowSlope = false;
	        slopeAmount = 1.5;
	    }
	    else
	    {
	        fastSlope = false;              //We are not affected by the slope when we are standing still
	        slowSlope = false;
	        slopeAmount = 0;
	    }
	}
	else if place_meeting(x, bbox_bottom+1, obj_slopeL) //The regular LSlope
	{
	    if global.vel < 0                   //If we are moving left
	    {
	        slowSlope = true;                   //We accelerate slower
	        fastSlope = false;
	        slopeAmount = 2;
	    }
	    else if global.vel > 0              //If we are moving right
	    {
	        fastSlope = true;                   //We accelerate faster
	        slowSlope = false;
	        slopeAmount = 2;
	    }
	    else
	    {
	        fastSlope = false;              //We are not affected by the slope when we are standing still
	        slowSlope = false;
	        slopeAmount = 0;
	    }
	}
	else if place_meeting(x, bbox_bottom+1, obj_slopeLLong) //The long LSlope
	{
	    if global.vel < 0                   //If we are moving left
	    {
	        slowSlope = true;                   //We accelerate slower
	        fastSlope = false;
	        slopeAmount = 1.5;
	    }
	    else if global.vel > 0              //If we are moving right
	    {
	        fastSlope = true;                   //We accelerate faster
	        slowSlope = false;
	        slopeAmount = 1.5;
	    }
	    else
	    {
	        fastSlope = false;              //We are not affected by the slope when we are standing still
	        slowSlope = false;
	        slopeAmount = 0;
	    }
	}
	else
	{
	    slowSlope = false;
	    fastSlope = false;
	    slopeAmount = 0;
	}



}
