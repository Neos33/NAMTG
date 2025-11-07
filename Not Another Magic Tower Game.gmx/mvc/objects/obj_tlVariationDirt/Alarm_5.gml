if(obj_tlVariationSkeleton.y < 400)
{
    obj_tlVariationSkeleton.y += 2;
    alarm[5] = 1;
}
else
{
    with(obj_tlVariationSkeleton)
    {
        instance_destroy();
    }
}

