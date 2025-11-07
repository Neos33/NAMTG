if(abs(y - 304) <= 8)
{
    y = 304;
    speed = 0;
    if(ind == 1)
    {
        move = false;
        alarm[4] = 1;
    }
    else
    {
        instance_destroy();
    }
}
else
{
    alarm[6] = 1;
}

