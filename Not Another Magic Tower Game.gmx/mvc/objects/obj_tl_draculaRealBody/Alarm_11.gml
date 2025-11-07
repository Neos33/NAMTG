if(shakeCountdown > 0)
{
    shakeCountdown -= 1;
    __view_set( e__VW.XView, 0, random_range(-15,15) );
    __view_set( e__VW.YView, 0, random_range(-15,15) );
    alarm[11] = 1;
}

