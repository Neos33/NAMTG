if(point_distance(targetX,targetY,x,y) < spd)
{
 x = targetX;
 y = targetY;
 hspeed = 0;
 vspeed = 0;
}
else
{
 move_towards_point(targetX,targetY,spd);
 alarm[11] = 1;
}

