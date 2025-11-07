alarm[5] = 0;
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
if(left)
{
    direction = 180;
}
else
{
    direction = 0;
}
speed += 0.4;
if(x > 832 || x < -16)
{
    speed = 0;
    if(player_is_alive())
    {
        forAch = true;
        dashCount = 10;
        dashGap = 40;
        alarm[7] = 70;
    }
}
else
{
    alarm[6] = 1;
}

