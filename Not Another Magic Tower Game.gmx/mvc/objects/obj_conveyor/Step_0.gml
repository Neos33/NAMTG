if(inited)
{
    spaceTriggered = false;
    with(obj_spaceButton)
    {
        if(sprite_index == spr_jkTouch_Green)
        {
            other.spaceTriggered = true;
        }
    }
    if(!spaceTriggered)
    {
        event_user(0);
    }
}

