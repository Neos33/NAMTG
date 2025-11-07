if(status == 1)
{
    if(x + image_xscale != targetX)
    {
        if(!move)
        {
            image_xscale += obj_s8SmogSettings.spd1/2;
        }
    }
    else
    {
        event_user(0);
        status = -1;
    }
}
if(move == true)
{
    if(x != targetX)
    {
        x += obj_s8SmogSettings.spd1/2;
        if(status == -1)
        {
            image_xscale = targetX - x;
        }
    }
    else
    {
        instance_destroy();
    }
    
}

