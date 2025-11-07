if(isHit)
{
    len300 = obj_osuController.taikoSpd * 4;
    len100 = obj_osuController.taokoSpd * 8;
    if(type == 2 || type == 0)
    {
        if(hitType == 0)
        {
            if(dis <= len300)
            {       
                acc = 300;
            }
            else
            {
                acc = 100;
            }
            correct = true;
        }
        else
        {
            acc = 0;
        }
    }
    else
    {
        if(hitType == 1)
        {
            if(dis <= len300)
            {       
                acc = 300;
            }
            else
            {
                acc = 100;
            }
            correct = true;
        }
        else
        {
            acc = 0;
        }
    }
    instance_destroy();
}

