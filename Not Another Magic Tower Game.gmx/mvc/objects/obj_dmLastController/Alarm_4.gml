with(obj_darkMage_combat2)
{
    if(point_distance(x,y,targetX,targetY) > 10 && !reached)
    {
        move_towards_point(targetX, targetY, 10);   
        other.alarm[4] = 1;
    }
    else
    {
        if(!reached)
        {
            reached = true;
            obj_dmSwordAndSickle.alarm[3] = 1;
            haki = instance_create(obj_dmSwordAndSickle.x, obj_dmSwordAndSickle.y, obj_dmSwordHaki);
            if(obj_dmSwordAndSickle.image_index == 0)
            {
                with(haki)
                {
                    event_user(0);
                }
            }
        }
        if(speed > 0)
        {
            speed -= 0.4;
            other.alarm[4] = 1;
        }
        else
        {
            speed = 0;
            other.alarm[3] = 50;
        }
    }
}

