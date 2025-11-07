if(phase == 0)
{
    if(sw < width)
    {
        sw += 10;
    }
    else
    {
        sw = width;
        phase = 1;
    }
    repeat(2)
    {
        with(instance_create(x+width-sw,y+random_range(0,height),obj_hitEffect))
        {
            speed = random_range(5,7);
            direction = random_range(-5,5);
        }
    }
}
else if(phase == 2)
{
    if(sw < width / 2)
    {
        sw += 10;
        repeat(2)
        {
            with(instance_create(x+sw,y+random_range(0,height),obj_hitEffect))
            {
                speed = random_range(5,7);
                direction = random_range(175,185);
            }
            with(instance_create(x+width-sw,y+random_range(0,height),obj_hitEffect))
            {
                speed = random_range(5,7);
                direction = random_range(-5,5);
            }
        }
    }
    else
    {
        sw = width / 2;
        instance_destroy();
    }
}

