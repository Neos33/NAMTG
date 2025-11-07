if(start)
{
    with(obj_lightTargetRotater)
    {
        p = instance_create(x,y,obj_action2Cherry);
        p.image_angle = direction;
    }
    alarm[2] = 7;
}

