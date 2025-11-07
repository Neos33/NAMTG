if(start)
{
    if(targetScale < 2)
    {
        targetScale += 0.4;
        spd -= 0.5;
    }
    else
    {
        if(!explode && image_xscale == 2)
        {
            explode = true;
            alarm[3] = 1;
            alarm[4] = 1;
        }
    }
    with(other)
    {
        hitEffect();
        instance_destroy();
    }
}

