if(point_distance(x,y,400,y) > 15)
{
    move_towards_point(400,y,15);
    alarm[5] = 1;
}
else
{
    obj_dmLastController.alarm[2] = 1;
    alarm[6] = 1;
    x = 400;
    speed = 0;
}

