    if(type == 0)
    {
        if(vspeed < 5.25)
        {
            vspeed += 0.75;
        }
        else
        {
            type = 1;
        }
    }
    else if(type == 1)
    {
        if(vspeed > -5.25)
        {
            vspeed -= 0.75;
        }
        else
        {
            type = 0;
        }
    }

