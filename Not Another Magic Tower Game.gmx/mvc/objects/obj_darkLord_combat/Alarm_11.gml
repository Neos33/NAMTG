alarm[11] = 1;
if(inSkill)
    exit;
if(currentTarget == targetCount)
{
    event_user(0);
    exit;
}
if(point_distance(x,y,targetX[currentTarget], targetY[currentTarget]) < spd)
{
    x = targetX[currentTarget];
    y = targetY[currentTarget];
    speed = 0;
    currentTarget += 1;
}
else
{
    move_towards_point(targetX[currentTarget], targetY[currentTarget], spd);
}


