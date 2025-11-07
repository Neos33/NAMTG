if(!onHold)
{
    with(obj_bdmAncientBook)
    {
        if(onHold && !boom)
        {
            event_user(0);
        }
    }
    onHold = true;
    sound_fix(snditem);
}

