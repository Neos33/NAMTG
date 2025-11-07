if(speed > 0)
{
    speed -= 0.1;
    alarm[3] = 1;
}
else
{
    speed = 0;
    hspeed = 0;
    vspeed = 0;
    alarm[4] = 14;
    alarm[5] = 15;
}

