if(!global.story[30])
{
    if(instance_number(obj_15FRouteTrigger) == 0)
    {
        player.frozen = true;
        global.story[30] = true;
        audio_playsound(sndSwitch);   
    }
}

