if !instance_exists(obj_variationSkeleton_combat)
    exit;
if(obj_variationSkeleton_combat.y > 568)
{
    obj_variationSkeleton_combat.y -= 2;
    repeat(2)
    {
        var p = instance_create(obj_variationSkeleton_combat.x, 580,obj_vsDarkBullet3);
        p.direction = random_range(40, 130);
        p.speed = random_range(7,9);
    }
    alarm[4] = 1;
}

