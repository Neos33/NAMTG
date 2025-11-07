if(image_index < 6)
{
    image_index += 1;
    gap -= 1;
    alarm[3] = gap;
}
else
{
    image_index = 4;
    m = instance_create(x - 4 * sign(image_xscale), y, obj_draculaMeteor);
    m.speed = -0.5 * sign(image_xscale);
    alarm[4] = 24;
}

