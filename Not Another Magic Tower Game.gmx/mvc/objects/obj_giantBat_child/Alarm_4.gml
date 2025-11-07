if(point_distance(x,y,targetX, targetY) > 3)
{
    move_towards_point(targetX, targetY, 3);
    alarm[4] = 1;
}
else
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    image_speed = 0;
    image_index = 2;
    alarm[3] = 150;
    alarm[5] = 1;
    alarm[6] = 1;
}

