dis = point_distance(x,y,targetX[tcount],targetY[tcount]);
if(spd < dis / 30)
{
    spd += 0.1;
}
else
{
    if(spd > 3)
    {
        spd -= 0.1;
    }
}
if(point_distance(x,y,targetX[tcount],targetY[tcount]) < spd)
{
    hspeed = 0;
    vspeed = 0;
    x = targetX[tcount];
    y = targetY[tcount];
    tcount += 1;
    alarm[4] = 10;
}
else
{
    move_towards_point(targetX[tcount],targetY[tcount],spd);
    alarm[3] = 1;
}

