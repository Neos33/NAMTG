if(d2.x > x + 2 * gap)
{
    d2.hspeed -= acc;
    alarm[0] = 1;
}
else
{
    d2.x = x + 2 * gap;
    d2.hspeed = 0;
    d1.hspeed = -bounceSpd;
    d1.x -= bounceSpd;
    alarm[1] = 1;
}

