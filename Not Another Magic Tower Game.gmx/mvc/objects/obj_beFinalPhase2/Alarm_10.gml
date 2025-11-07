if(moveDir == 0)
{
    targetX = 550;
}
else
{
    targetX = 250;
}
targetY = 250;
dis = point_distance(x,y,targetX,250);
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
if(point_distance(x,y,targetX,targetY) < spd)
{
    hspeed = 0;
    vspeed = 0;
    x = targetX;
    y = targetY;
    if(moveDir == 0)
    {
        moveDir = 1;
    }
    else
    {
        moveDir = 0;
    }
    alarm[10] = 100;
}
else
{
    move_towards_point(targetX,targetY,spd);
    alarm[10] = 1;
}

