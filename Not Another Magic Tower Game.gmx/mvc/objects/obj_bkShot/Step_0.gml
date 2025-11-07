if(start)
{
    if(image_xscale > 0)
    {
        if(image_xscale < 5)
        {
            image_xscale += 0.11;
        }
        hspeed -= 0.4;
    }
    else 
    {
        if(image_xscale > -5)
        {
            image_xscale -= 0.11;
        }
        hspeed += 0.4;
    }
    if(image_yscale > 0.1)
    {
        image_yscale -= 0.02;
    }
}

