repeat(12)
{
    with(instance_create(x,y,obj_tlSkeletonBone))
    {
        speed = random_range(5,7);
        direction = random_range(30,150);
        gravity = 0;
        bounce = true;
    }
}
sound_fix(sndDeath);
instance_create(400 + sign(400 - player.x)*192,352,obj_tlSkeletonSwordsman);

