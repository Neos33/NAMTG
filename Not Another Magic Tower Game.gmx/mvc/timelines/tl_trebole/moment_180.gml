with(obj_tre_bullet)
{
    if(num==1)
    {
        if(image_index == 0)
        {
            move_towards_point(400,304,8);
        }
        else
        {
            move_towards_point(400,304,-8);
        }
    }
    if(num==2)
    {
        repeat(2)
        {
            a=instance_create(x,y,obj_tre_bullet);
            a.speed=random_range(1,2);
            a.friction=-0.01;
            a.frspd=0.001;
            a.image_index=irandom(6);
            a.direction=random(360);
        }
        instance_destroy()
    }
}

