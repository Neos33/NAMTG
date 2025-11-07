p1 += 1;
if(isRepeated == 0)
{
    instance_create(irandom_range(200,600), irandom_range(150, 350),obj_light1);
}
else if(isRepeated == 1)
{
    if((type mod 3) == 0)
    {
        l2 = instance_create(-32, irandom_range(100,350), obj_light2);
        l2.hspeed = 10;
    }
    else if((type mod 3) == 1)
    {
        l2 = instance_create(832, irandom_range(100,350), obj_light2);
        l2.hspeed = -10;
    }
    else if((type mod 3) == 2)
    {
        l2 = instance_create(irandom_range(150,650), -32, obj_light2);
        l2.vspeed = 10;
    }
    type += 1;
}
else if(isRepeated == 2)
{
    if((type mod 3) == 0)
    {
        l2 = instance_create(-32, irandom_range(100,350), obj_light2);
        l2.hspeed = 10;
        if(l2.y > 225)
        {
            l2.vspeed = -3;
        }
        else
        {
            l2.vspeed = 3;
        }
    }
    else if((type mod 3) == 1)
    {
        l2 = instance_create(832, irandom_range(100,350), obj_light2);
        l2.hspeed = -10;
        if(l2.y > 225)
        {
            l2.vspeed = -3;
        }
        else
        {
            l2.vspeed = 3;
        }
    }
    else if((type mod 3) == 2)
    {
        l2 = instance_create(irandom_range(150,650), -32, obj_light2);
        l2.vspeed = 10;
        if(l2.x > 400)
        {
            l2.hspeed = -3;
        }
        else
        {
            l2.hspeed = 3;
        }
    }
    type += 1;;
}
if(p1 < 6)
{
    alarm[0] = 40;
}
else
{
    alarm[1] = 40;
    p1 = 0;
}

