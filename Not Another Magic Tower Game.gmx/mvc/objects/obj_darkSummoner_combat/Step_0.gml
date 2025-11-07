if(move)
{
    dis = point_distance(targetX, targetY, x, y);
    if(dis < 2)
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;
        speed = 0;
        move = false;
        if(!colorful)
        {
            if(instance_exists(obj_dsCrystall))
            {
                with(obj_dsCrystall)
                {
                    alarm[0] = 30;
                }
            }
            else
            {
                if(!crazy)
                {
                    alarm[3] = 30;
                }
            }
        }
    }
    else
    {
        spd = sqrt(dis) / 2.5;
        if(spd < 2)
        {
            spd = 2;
        }
        move_towards_point(targetX,targetY,spd);
    }
}

