if(image_alpha < 1)
{
    image_alpha += 0.02;
}
else
{
    image_alpha = 1;
}
if(point_distance(400, 488,x,y) > 5)
{
    move_towards_point(400, 488, 5);
    alarm[11] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    x = 400;
    y = 488;
    instance_create(x,y,obj_vsDarkHole);
    instance_create(x,y,obj_vsDarkViewShaker);
    time = 300;
    final = true;
}

