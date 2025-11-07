if(y >= 328)
{
    repeat(10)
    {
        instance_create(x + random_range(-8,8),y+random_range(16,32),obj_tlSlimingSlime);
    }
    sound_fix(sndEarth1);
    sound_fix(sndEvilSmile);
    instance_create(x,y,view_shaker1);
    instance_destroy();
}

