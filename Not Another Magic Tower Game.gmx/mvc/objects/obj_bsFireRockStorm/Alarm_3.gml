if(place_meeting(x,y,movingPlatform))
{
    alarm[3] = 1;
}
else
{
    move = false;
    hspeed = 0;
    gravity = 0.3;
    alarm[10] = 0;
}

