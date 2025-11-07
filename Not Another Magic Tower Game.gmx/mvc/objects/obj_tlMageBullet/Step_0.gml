if(phase == 1)
{
    if(speed > 0)
    {
        speed -= 0.1;
    }
    else
    {
        speed = 0;
        phase = 2;
    }
}

if(phase == 2)
{
    if(speed < 4.5)
    {
        speed += 0.15;
    }
}

