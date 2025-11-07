if(blackalpha < 1)
{
    blackalpha += 0.02;
    alarm[2] = 1;
}
else
{
    alarm[3] = 1;
    __view_set( e__VW.XView, 0, sx );
    __view_set( e__VW.YView, 0, sy );
    __view_set( e__VW.WView, 0, 800 );
    __view_set( e__VW.HView, 0, 544 );
    drawMap = false;
}

