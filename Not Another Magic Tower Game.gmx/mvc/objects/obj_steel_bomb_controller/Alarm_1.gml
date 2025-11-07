if instance_exists(obj_steel_combat)
{
    if(obj_steel_combat.flag != 1)
    {
        audio_playsound(sndShoot);
        instance_create(x,y,obj_steel_bomb);
    }

    alarm[1]=8;
}

