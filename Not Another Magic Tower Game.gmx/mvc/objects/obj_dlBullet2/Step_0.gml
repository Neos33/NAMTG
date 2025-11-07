/*
if(!locked)
{
    dir = point_direction(x,y,player.x,player.y);
    if(abs(dir - direction) > 5)
    {
        motion_add(dir, 0.2);
        spd = speed;
        if(!obj_darkLord_combat.crazy)
        {
            speed = RangeClamp(spd, 0, 8);
        }
        else
        {
            speed = RangeClamp(spd, 0, 15);
        }
    }
    else
    {
        locked = true;
    }
}*/
        spd = speed;
        if(!obj_darkLord_combat.crazy)
        {
            speed = RangeClamp(spd, 0, 8);
        }
        else
        {
            speed = RangeClamp(spd, 0, 15);
        }
image_angle = direction - 90;

/* */
/*  */
