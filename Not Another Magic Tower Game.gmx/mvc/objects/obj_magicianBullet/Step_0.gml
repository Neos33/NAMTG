if(!attracted)
{
    image_angle = direction - 90;
}
else
{
    if(x > 400)
    {
        image_angle += rSpd;
    }
    else
    {
        image_angle -= rSpd;
    }
    rSpd += 0.1;
    if(spd > 0)
    {
        if(point_distance(obj_magicianPortal1.x, obj_magicianPortal1.y, x,y) < spd)
        {
            alarm[3] = 1;
            spd = 0;
            hspeed = 0;
            vspeed = 0;
        }
        else
        {    
            speed = spd;
            direction = point_direction(x,y, obj_magicianPortal1.x,obj_magicianPortal1.y);
        }
    }
}

