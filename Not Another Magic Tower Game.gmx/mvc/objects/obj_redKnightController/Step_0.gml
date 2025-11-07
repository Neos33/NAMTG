if(!player_is_alive())
{
    exit;
}
tempDis = dis;
dis = RangeClamp(544 + 23 - player.y, tempDis, tempDis + 500);
tempViewY = __view_get( e__VW.YView, 0 );
__view_set( e__VW.YView, 0, RangeClamp(player.y - viewMoveDis, tempViewY - 500, RangeClamp(tempViewY + 5, tempViewY, 0)) );
//player.vspeed = -9;
player.gravity = 0.3;
tileOffsetY += tileVspd;
if(player.y > (__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 10))
{
    with(player)
    {
        killPlayer();
    }
}
meter = round(dis/10);
if(player.y < createY)
{
    createY -= createGap;
    alarm[1] = 1;
}

