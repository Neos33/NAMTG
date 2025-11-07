if instance_exists(obj_skeletonElete_combat)
{
    image_index = obj_skeletonElete_combat.image_index;
    image_xscale = obj_skeletonElete_combat.image_xscale;
    image_alpha = obj_skeletonElete_combat.image_alpha;
    move_bounce_solid(false);
}
//image_alpha = obj_skeletonElete_combat.alpha;

if(gather)
{
    if(abs(544 - y) < abs(vspeed))
    {
        y = 544;
        with(obj_eleteBone)
        {
            alarm[3] = 1;
        }
        hspeed = 0;
        vspeed = 0;
        gather = false;
        if instance_exists(obj_skeletonElete_combat)
        {
            obj_skeletonElete_combat.alarm[11] = 50;
            obj_skeletonElete_combat.time = 1;
        }
    }
}

