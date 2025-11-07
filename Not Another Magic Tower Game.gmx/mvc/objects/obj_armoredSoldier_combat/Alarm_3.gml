if(point_distance(x,y,400,459) < 20)
{
    x = 400;
    y = 459;
    hspeed = 0;
    vspeed = 0;
    instance_create(0,0,view_shaker1);
    instance_create(0,0,obj_asLaserController);
}
else
{
    move_towards_point(400,459,20);
    alarm[3] = 1;
}

