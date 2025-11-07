if(start)
{
    if(type == 0)
    {
        if(time mod 3 == 0)
        {
            b = instance_create(x,y,obj_faroStartBullet);
            b.direction = point_direction(x,y,player.x,player.y);
            b.speed = 15;
        }
    }
    else if(type == 1)
    {
        if(time mod 2 == 0)
        {
            b = instance_create(x,y,obj_faroFinalBullet1);
            b.direction = random_range(45,135);
            b.speed = random_range(8,12);
        }
    }
    if(image_xscale > 0)
    {
        image_xscale -= 1/80;
        image_yscale -= 1/80;
    }
    else
    {
        instance_destroy();
    }
    time += 1;
}

