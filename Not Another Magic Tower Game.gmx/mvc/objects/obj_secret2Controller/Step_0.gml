if(start)
{
    if(count < 3)
    {
        if(!sound_isplaying(sndClock))
        {
            sound_fix(sndClock);
            count += 1;
            start = false;
            alarm[0] = 40;
        }
    }
    else
    {
        instance_create(400 + 35 * 10, 304 - 42 * 10, obj_meteor);
        instance_destroy();
    }
}

