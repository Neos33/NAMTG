if(obj_tlVariationSkeleton.y > 376)
{
    obj_tlVariationSkeleton.y -= 2;
    repeat(2)
    {
        var p = instance_create(obj_tlVariationSkeleton.x, 376,obj_vsDarkBullet3);
        p.direction = random_range(40, 130);
        p.speed = random_range(7,9);
    }
    alarm[4] = 1;
}

