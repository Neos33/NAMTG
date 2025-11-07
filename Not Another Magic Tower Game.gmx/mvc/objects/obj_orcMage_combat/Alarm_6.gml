if(image_alpha > 0)
{
    image_alpha -= 0.03;
    alarm[6] = 1;
}
else
{
    image_alpha = 0;
    if(status != "pendingSword")
    {
        x = targetX;
        y = targetY;
    }
    else
    {
        x = player.x;
        y = 416;
    }
    if(x > 400)
    {
        image_xscale = 1;
    }
    else
    {
        image_xscale = -1;
    }
    
    if(status == "init")
    {
        x = -32;
        y = -32;
        alarm[11] = 50;
    }
    else
    {
        alarm[7] = 1;
    }
    
}

