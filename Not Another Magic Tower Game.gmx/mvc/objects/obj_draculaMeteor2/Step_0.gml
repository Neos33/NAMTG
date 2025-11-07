image_angle += 3;
x = cx + rad * cos(degtorad(dir));
y = cy - rad * sin(degtorad(dir));
if(p1)
{
    p1.image_angle = point_direction(p1.x,p1.y,x,y);
}
if(p2)
{
    p2.image_angle = point_direction(p2.x,p2.y,p1.x,p1.y);
}
rad += 2;
dir += dSpd;
if(dSpd < 5)
{
    dSpd += 0.07;
}

