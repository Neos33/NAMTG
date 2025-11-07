if(godtime > 0)
{
    sound_fix(sndIce1);
    if(!instance_exists(obj_monsterHPBlock))
    {
        instance_create(x,y, obj_monsterHPBlock);
    }
    with(other)
    {
        instance_destroy();
    }
}
else
{
    event_inherited();
}

