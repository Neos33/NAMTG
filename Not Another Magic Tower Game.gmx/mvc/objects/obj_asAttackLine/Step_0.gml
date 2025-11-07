if(x > 900 || x < -100 || y > 708 || y < -100)
{
    if(!dispear)
    {
        dispear = true;
        speed = 0;
        alarm[0] = 1;
        var shadow = instance_create(sx,sy,obj_asDashShadow);
        shadow.direction = direction;
        shadow.image_angle = direction - 90;
        shadow.speed = 40;
    }
}

