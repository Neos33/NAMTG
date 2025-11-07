if(hp > 60)
{
    event_inherited();
}
else
{
    if(!instance_exists(obj_monsterHPBlock))
    {
        instance_create(x,y,obj_monsterHPBlock);
        audio_playsound(sndIce1);
        with(other)
        {
            instance_destroy();
        }
    }
}

