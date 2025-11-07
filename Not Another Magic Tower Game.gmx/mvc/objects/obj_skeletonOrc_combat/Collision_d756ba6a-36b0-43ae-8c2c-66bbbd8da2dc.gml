if(!viewSplit && hp <= 40)
{
    with(other)
    {
        instance_destroy();
    }   
    if(!instance_exists(obj_monsterHPBlock))
    {
        instance_create(x,y,obj_monsterHPBlock);
    }
    audio_playsound(sndIce1);
}
else
{
    event_inherited();
}

