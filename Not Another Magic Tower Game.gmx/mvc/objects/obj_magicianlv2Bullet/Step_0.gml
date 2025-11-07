image_angle = direction - 90;

if(status == 1)
{
    dir = point_direction(x,y,targetX,targetY);
    if(abs(direction - dir) < 1.5)
    {
        direction = dir;
    }
    else
    {
        if(direction > dir)
        {
            direction -= 1.5;
        }
        else
        {
            direction += 1.5;
        }
    }

    if(point_distance(x,y,targetX,targetY) < speed)
    {
        instance_destroy();
    }
}
    
    

if(instance_exists(obj_magicianlv2Superwave))
{
    dis = point_distance(x,y, obj_magicianlv2Superwave.x,obj_magicianlv2Superwave.y);
    pdir= point_direction(obj_magicianlv2Superwave.x,obj_magicianlv2Superwave.y,x,y);
    if(dis <= 300)
    {
        speed += 0.02;
        if(x  >  400)
        {
            if(!(vspeed < 0 && abs(vspeed) > hspeed))
            {
                direction += 1;
            }
        }
        else
        {
            if(!(vspeed < 0 && abs(vspeed) > abs(hspeed)))
            {
                direction -= 1;
            }
        }
    }
    else
    {
        speed += 0.01;
        if(x  >  400)
        {
            if(!(vspeed < 0 && abs(vspeed) > hspeed))
            {
                direction += 0.5;
            }
        }
        else
        {
            if(!(vspeed < 0 && abs(vspeed) > abs(hspeed)))
            {
                direction -= 0.5
            }
        }
    }
}

