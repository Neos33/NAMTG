if(!start)
{
    speed -= 0.06;
    if(speed <= 0)
    {
        speed = 0;
        start = true;
    }
}
else if(!shoot)
{
    shoot = true;
    alarm[3] = 30;
}

