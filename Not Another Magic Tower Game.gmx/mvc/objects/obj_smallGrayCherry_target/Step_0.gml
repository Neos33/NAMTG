if(!p)
{
if(point_distance(x,y,targetX,targetY) <= spd)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    p = 1;
    //instance_change(obj_smallGrayCherry, true);
}
else
{
    move_towards_point(targetX, targetY, spd);
}
}

if(speed != 0)
{
    image_angle = direction;
}

