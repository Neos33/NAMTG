if(start)
{
    event_inherited();   
}
else
{
    with(other)
    {
        hitEffect();
    }
    if(!instance_exists(obj_monsterHPBlock))
    {
        instance_create(x,y, obj_monsterHPBlock);
    }
    sound_fix(sndIce1);
}

