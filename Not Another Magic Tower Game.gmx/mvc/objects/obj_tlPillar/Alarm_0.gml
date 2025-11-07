if(abs(y-targetY) > 1)
{
    vspeed = -0.5;
    alarm[0] = 1;
}
else
{
    speed = 0;
    y = targetY;
}

