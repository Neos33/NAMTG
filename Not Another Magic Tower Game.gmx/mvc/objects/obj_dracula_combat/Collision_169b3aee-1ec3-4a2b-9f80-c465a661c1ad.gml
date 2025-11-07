if(image_alpha >= 0.8)
{
    if(transformStart || (hp <= 40 && y > 400))
    {
        with(other)
        {
            if(!instance_exists(obj_monsterHPBlock))
            {
                instance_create(x,y,obj_monsterHPBlock);
            }
            audio_playsound(sndIce1);
            hitEffect();
            instance_destroy();
        }
    }
    else
    {
        event_inherited();
    }
    
}

