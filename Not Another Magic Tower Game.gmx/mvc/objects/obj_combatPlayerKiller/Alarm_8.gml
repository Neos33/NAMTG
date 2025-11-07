if(global.cooldown)
{
    with(player)
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
    with(player2)
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

