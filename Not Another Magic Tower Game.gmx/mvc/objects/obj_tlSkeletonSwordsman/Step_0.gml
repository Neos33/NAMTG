if(start)
{
    if(height < 32)
    {
        height += 32/80;
    }
    else if(!sword)
    {
        var s = instance_create(x - 10 * image_xscale, y+ 18, obj_tlSkeletonSword);   
        s.image_xscale = image_xscale;
        sword = true;
        alarm[3] = 10;
    }
}

