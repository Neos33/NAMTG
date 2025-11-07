if(instance_exists(obj_black))
{
    if(obj_black.image_alpha > 0)
    {
        obj_black.image_alpha -= 0.05;
        alarm[0] = 1;
    }
}

