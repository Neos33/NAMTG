if !instance_exists(obj_variationSkeleton_combat)
    exit;

if(obj_variationSkeleton_combat.y < 588)
{
    obj_variationSkeleton_combat.y += 2;
    alarm[5] = 1;
}

