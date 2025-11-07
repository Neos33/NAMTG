if(b2.x - x < radius)
{
    b2.x += 8;
    alarm[3] = 1;
}
else
{
    b2.x = x + radius;
    alarm[2] = alarmInterval;
}

