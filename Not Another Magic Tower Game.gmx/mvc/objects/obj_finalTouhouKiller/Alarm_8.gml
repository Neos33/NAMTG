if(global.cooldown)
{
    with(obj_playerTouhou)
    {
        if(image_alpha == 0)
        {
            image_alpha = 1;
        }
        else 
        {
            image_alpha = 0;
        }
    }
    with(obj_finalPlane)
    {
        if(image_alpha == 0)
        {
            image_alpha = 1;
        }
        else 
        {
            image_alpha = 0;
        }
    }
    alarm[8] = 5;
}

