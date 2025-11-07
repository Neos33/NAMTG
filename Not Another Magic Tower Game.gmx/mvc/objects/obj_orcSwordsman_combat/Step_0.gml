if(status == 1)
{
    if(image_alpha > 0)
    {
        image_alpha -= 0.1;
    }
    else
    {
        x = -32;
        y = -32;
    }
}

if(status == 2)
{
    image_alpha = 1;
    type = choose(-1, 1);
    x = player.x + 12 * type;
    y = player.y - 23;
    image_xscale =  sign(x - player.x);
    prepareToHit = true;
    alarm[6] = 30;
    status = 3;
}

