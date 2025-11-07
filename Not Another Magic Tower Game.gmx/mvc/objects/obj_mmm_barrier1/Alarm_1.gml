if(x - b1.x < radius)
{
    b1.x -= 6;
    alarm[1] = 1;
}
else
{
    b1.x = x - radius;
    alarm[0] = alarmInterval;
}

