if(count1 > 0)
{
    count1 -= 1;
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    __view_set( e__VW.YView, 1, __view_get( e__VW.YView, 1 ) - (2) );
    alarm[0] = 1;
}
else
{
    start = true;
}

