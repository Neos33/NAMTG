if(start)
{
    if(image_xscale > 0)
    {
        if(image_angle < 120)
        {
            image_angle += 10; 
        }
        else
        {
            image_angle = 120;
            start = false;
        }
    }
    else
    {
        if(image_angle > -120)
        {
            image_angle -= 10; 
        }
        else
        {
            image_angle = -120;
            start = false;
        }
    }
}

