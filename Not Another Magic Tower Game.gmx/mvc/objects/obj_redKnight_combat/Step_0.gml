y = __view_get( e__VW.YView, 0 ) + 32;
if(hp < 70 && !move)
{
    move = true;
    hspeed = 5;
}
if(move)
{
    move_bounce_solid(false);
}
if(hp < 40 && !spikeReady)
{
    spikeReady = true;
    alarm[3] = 1;
}


