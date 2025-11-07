with(obj_lightTargetRotater)
{
    dis = point_distance(x,y,400,240);
    ang = point_direction(400,240,x,y);
    image_xscale = 0.8;
    image_yscale = 0.8;
    x = 400 + dis * cos(degtorad(ang + 2));
    y = 240 - dis * sin(degtorad(ang + 2));
}


with(obj_action2Cherry)
{
    dis = point_distance(x,y,400,240);
    ang = point_direction(400,240,x,y);
    image_angle += 2;
    x = 400 + dis * cos(degtorad(ang + 2));
    y = 240 - dis * sin(degtorad(ang + 2));
}

start = false;
if(shoot)
{
    alarm[4] = 1;
}

