if(viewshake)
{
    __view_set( e__VW.XView, 0, random_range(-shakeSize, shakeSize) );
    __view_set( e__VW.YView, 0, random_range(-shakeSize, shakeSize) );
    alarm[1] = 5;
}

