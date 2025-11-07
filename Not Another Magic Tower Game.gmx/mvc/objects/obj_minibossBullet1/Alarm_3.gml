move_towards_point(400,304,obj_miniboss1_battleController4.rSpd);
alarm[3] = 1;
/*dis = point_distance(400,304, x,y);
dir = point_direction(400,304,x,y);
dir += obj_miniboss1_battleController4.rSpd;
if(dis > 2)
{
 dis -= 2;
}
else
{
 dis = 0;
}
direction = dir + 90;
x = 400 + dis * cos(degtorad(dir));
y = 304 - dis * sin(degtorad(dir));
if(dis > 0)
{
    alarm[3] = 1;
}
else
{
    alarm[4] = 1;
}


/* */
/*  */
