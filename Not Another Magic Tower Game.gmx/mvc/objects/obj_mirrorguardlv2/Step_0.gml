if(animation==0)
  {

    if(point_distance(x,y,targetX, targetY) <(spd/2) )
    {
        x = targetX;
        y = targetY;
        hspeed = 0;
        vspeed = 0;
        animation = 1;
        alarm[4] = 1;
    }
    else
    {

        move_towards_point(targetX, targetY, spd);
    }
   
    
}
move_bounce_solid(true);

if(animation == 1)
{
        if(rdir == 1)
        {
            if(image_xscale > -1)
            {
                image_xscale -= rspd;
            }
            else
            {
                rdir = 2;
            }
        }
        else if(rdir == 2)
        {
            if(image_xscale < 1)
            {
                image_xscale += rspd;
            }
            else
            {
                rdir = 1;
            }
        }
        if(image_xscale > 1)
        {
            image_xscale = 1;
        }
        if(image_xscale < -1)
        {
            image_xscale = -1;   
        }
        vspeed = 0;
        y = 560;
}

