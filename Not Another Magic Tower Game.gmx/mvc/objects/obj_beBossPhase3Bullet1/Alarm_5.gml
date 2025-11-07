if(speed < 6)
{
    speed += 0.1;
}

    alarm[5] = 1;
    
    
if(type == 1)
    {
        if(abs(direction - dir) < 30)
        {
            direction += 2;
        }
    }
    else if(type == 0)
    {
        if(abs(direction - dir) < 30)
        {
            direction -= 2;
        }
    }

