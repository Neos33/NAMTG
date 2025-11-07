if(phase == 1)
{
    if(totalAngle < 360)
    {
        totalAngle += stepAngle;
        if(ind == 1)
        {
            direction += stepAngle;
        }
        else
        {
            direction -= stepAngle;
        }
        if(stepAngle < 2.4)
        {
            stepAngle += 0.02;
        }
        
    }
    else
    {
        alarm[4] = 0;
        speed = 0;
        phase = 0;
    }
    //path_start(path,12,0,1);
    
    /*if(rAngle < 540)
    {
        rAngle += 2.7; 
        r -= 0.7;
    }
    else
    {
        phase = 0;
        alarm[4] = 0;
    }
    x = 400 + lengthdir_x(r, startAngle + rAngle);
    y = 304 + lengthdir_y(r, startAngle + rAngle);
    if(xprevious == x && yprevious == y)
    {
        image_angle = 0;
    }
    else
    {
        dir = point_direction(xprevious,yprevious,x,y);
        image_angle = dir - 90;
    }*/
}
else if(phase == 2)
{
    //image_angle += rotateAngle;
    vspeed -= 0.03;
}
image_angle += rotateAngle;

/* */
time += 1;

/* */
/*  */
