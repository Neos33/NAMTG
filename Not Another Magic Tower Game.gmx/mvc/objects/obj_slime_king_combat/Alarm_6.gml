if(status == 1 && !initialized)
{
    with(obj_slime_s_summoned)
    {
        gravity = 0.2;
        if(pid == 0)
        {
            hspeed = 6;
        }
        else if(pid == 1)
        {
            hspeed = -6;
        }
        else if(pid == 2)
        {
            hspeed = -4;
        }   
        else if(pid == 3)
        {
            hspeed = 4;
        }
    }
    initialized = true;
}
else if(status == 3 && !initialized)
{
    with(obj_slime_red_summoned)
    {
        if(pid == 0)
        {
            targetX = 400 - 16;
            targetY = 200 - 16;
            targetX1 = 400 - 16;
            targetY1 = 100 - 16;
            hspd = 0;
            vspd = 12;
        }
        else if(pid == 1)
        {
            targetX = 200 - 16;
            targetY = 400 - 16;
            targetX1 = 64;
            targetY1 = 544;
            hspd = 12;
            vspd = 0;
        }
        else if(pid == 2)
        {
            targetX = 600 - 16;
            targetY = 400 - 16;
            targetX1 = 704;
            targetY1 = 544;
            hspd = -12;
            vspd = 0;
        }
    }
    initialized = true;
}
else if(status == 5 && !initialized)
{
    with(obj_slime_black_summoned)
    {
        if(pid == 0)
        {
            targetX = 620;
            targetY = 460;
        }
        else if(pid == 1)
        {
            targetX = 180;
            targetY = 460;
        }
    }
    initialized = true;
}

