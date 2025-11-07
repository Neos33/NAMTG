if(__background_get( e__BG.VSpeed, 0 ) > 0)
{
    __background_set( e__BG.VSpeed, 0, __background_get( e__BG.VSpeed, 0 ) - (1) );
    alarm[1] = 3;
}
else
{
    alarm[2] = 20;
}

