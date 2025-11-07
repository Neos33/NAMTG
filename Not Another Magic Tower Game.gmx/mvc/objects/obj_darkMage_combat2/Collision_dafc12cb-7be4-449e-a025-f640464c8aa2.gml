if(!partStart)
{
    if(!instance_exists(obj_monsterHPBlock))
    {
        instance_create(x,y,obj_monsterHPBlock);
        sound_fix(sndgras);
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

