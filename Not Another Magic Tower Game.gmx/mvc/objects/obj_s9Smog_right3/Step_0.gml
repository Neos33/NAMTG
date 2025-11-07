if(status == 1)
{
    if(y + image_yscale != targetY)
    {
        if(!move)
        image_yscale += obj_s8SmogSettings.spd1;
    }
    else
    {
        event_user(0);
        status = -1;
    }
}
if(move == true)
{
    if(y != targetY)
    {
        y += obj_s8SmogSettings.spd1;
        if(status == -1)
        {
            image_yscale = targetY - y;
        }
    }
    else
    {
        instance_destroy();
    }
}

