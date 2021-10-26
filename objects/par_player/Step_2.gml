var h, v, collide, slope;

//Add to the counters, then get the h and v (pixels to move this step) from them.
h_counter += hspd;
v_counter += vspd;
h = round( h_counter );
v = round( v_counter );
h_counter -= h;
v_counter -= v;

//This loop will move the object based on hspd.  The object will never
//actually collide with a floor object, because this loop (and the next one for vspd)
//will always position it right next to them without overlapping.  If the
//object collides with a wall, it will call one of two events:
// User Event 0 - if the collision is horizontal
// User Event 1 - if the collision is vertical
collide = false;
slope = false;
repeat (abs(h))
{
    if (place_meeting(x + sign(h), y, obj_block))
    {
        if (!place_meeting(x + sign(h), y - 1, obj_block))
        {
            //Running up slopes
            y -= 1;
            x += sign(h);
            slope = true;
        }
        else
        {
            //Hit a wall
            collide = true;
            break;
        }
    }
    else
    {
        if (on_ground)
        {
            if (!place_meeting(x + sign(h), y + 1, obj_block) && place_meeting(x + sign(h), y + 2, obj_block))
                y += 1;
        }
        x += sign(h);  
    }

}

if (collide)
    event_perform(ev_other, ev_user0);
   
if (slope)
    hspd = approach(hspd, 0, S_SLOPE_SLOW);
   
collide = false;
repeat (abs(v))
{
    if (vspd <= 0)
    {
        if (place_meeting( x, y + sign(v), obj_block))
        {
            collide = true;
            break;
        }
        else
            y += sign(v);
    }
    else if (check_below())
    {
        collide = true;
        break;
    }
    else
        y += sign(v);

}

if (collide)
    event_perform( ev_other, ev_user1 );