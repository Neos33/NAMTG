if(place_meeting(x,y,movingPlatform))
{
    alarm[4] = 1;
}
else
{
    move = false;
    hspeed = 0;
    gravity = 0.3;
    alarm[11] = 0;
}

