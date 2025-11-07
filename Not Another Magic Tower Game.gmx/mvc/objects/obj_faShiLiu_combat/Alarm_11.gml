instance_create(832, random_range(32, 576), obj_shiliuPhase3Bullet);
if(phase == 3)
{
    alarm[11] = 12;
}
else
{
    with(obj_shiliuPhase3Bullet)
    {
        instance_destroy();
    }
}


