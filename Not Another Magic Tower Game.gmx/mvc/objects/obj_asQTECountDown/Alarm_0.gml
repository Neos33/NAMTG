if(!stop)
{
    time -= 1;
    if(time == 0)
    {
        sound_fix(sndWrong);
        with(obj_asQTEController)
        {
            start = false;
            alarm[11] = 1;
        }
    }
    else
    {
        alarm[0] = 50;
    }
}

