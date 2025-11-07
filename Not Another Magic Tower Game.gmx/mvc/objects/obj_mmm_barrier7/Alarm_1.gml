if(d1.x < x - 2 * gap)
{
    d1.hspeed += acc;
    alarm[1] = 1;
}
else
{
    d1.hspeed = 0;
    d1.x = x - 2 * gap;
    d2.hspeed = bounceSpd;
    d2.x += bounceSpd;
    alarm[0] = 1;
}

