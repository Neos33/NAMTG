__view_set( e__VW.XView, 0, random_range(-shakeSize, shakeSize) );
__view_set( e__VW.YView, 0, random_range(-shakeSize, shakeSize) );
if(isShake) 
{
    alarm[3] = 1;
}
else
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
}

