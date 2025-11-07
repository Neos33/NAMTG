if(isTarget)
{
    if(point_distance(x,y, targetX, targetY) <= spd / 2)
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;     
        if(!isInit)
        {
            isTarget = false;
            image_angle = 0; 
        }      
    }
    else
    {
        if(!isInit)
        {
            image_angle += 7.2;
        }
        move_towards_point(targetX,targetY, spd);
    }
}
else
{
    isTarget = false;
    image_angle = 0;
    image_xscale = 0.8;
    image_yscale = 0.8;
    }


if(t <= sTime)
{   
    t += 1;
    image_angle += 7.2;
    image_xscale += 0.014;
    image_yscale += 0.014;
}

