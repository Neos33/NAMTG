if(image_index < 18)
{
    image_index += 1;
    if(image_index == 4)
    {
        if instance_exists(obj_variationSkeleton_combat)
        {
            obj_variationSkeleton_combat.x = x;
            obj_variationSkeleton_combat.y = 572 + 16;
        }
        alarm[4] = 1;
    }
    else if(image_index == 16)
    {
        alarm[4] = 0;
        alarm[5] = 1;
    }
    if(image_index < 4 || image_index >= 16)
    {
        alarm[3] = 6;
    }
    else
    {
        alarm[3] = 4;
    }
}
else
{
    if !instance_exists(obj_variationSkeleton_combat)
        exit;
    
    obj_variationSkeleton_combat.dirtCount -= 1;
    
    if(obj_variationSkeleton_combat.dirtCount > 0)
    {
        obj_variationSkeleton_combat.alarm[10] = 20;
    }
    else
    {
        with(obj_variationSkeleton_combat)
        {
            drawDirt = false;
            image_alpha = 0;
            image_blend = c_white;
            x = 400;
            y = 304;
            alarm[11] = 20;
        }
    }
    instance_destroy();
}

