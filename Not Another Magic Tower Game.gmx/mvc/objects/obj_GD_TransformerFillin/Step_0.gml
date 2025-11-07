spd += 0.03;
if(point_distance(x,y,targetX,targetY) < spd)
{
    instance_destroy();
}
else
{
    move_towards_point(targetX,targetY,spd);
}
if(r > 0)
{
 r -= 0.1;
}

