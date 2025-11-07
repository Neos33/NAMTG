if(status == "dash")
{
    if(abs(image_xscale) > 0.05)
    {
        image_xscale -= sign(image_xscale) * 0.05;
        x+=sign(image_xscale) * 0.05 * 16;
        image_yscale += 0.1;
        y-= 0.1 * 16;
    }
    else
    {
        x = -32;
        if(y < 400)
        {
            gap = 240 - y;
        }
        alarm[11] = 10;
        status = "init";
    }
}
else if(status == "appear")
{
    if(abs(image_xscale) < 1)
    {
        if(isRight)
        {
            image_xscale += 0.05;
            x-=0.05 * 16;
        }
        else
        {
            image_xscale -= 0.05;      
            x+=0.05 * 16;    
        }
        image_yscale -= 0.1;
        y+=0.1*16;
    }
    else
    {
        waitTime += 1;
        if(isRight)
        {
            image_xscale = 1;
        }
        else
        {
            image_xscale = -1;
        }
        image_yscale = 1;
        if(waitTime == 20)
        {
            status = "init";    
            waitTime = 0;
            if(targetY > 400)
            {
                if(isRight)
                {
                    var shockwave = instance_create(x +32, y + 16, obj_magicianShockwave);
                    shockwave.image_xscale = 2.5;
                    shockwave.image_yscale = 2.5;
                }  
                else
                {
                    var shockwave = instance_create(x -32, y + 16, obj_magicianShockwave);
                    shockwave.image_xscale = -2.5;
                    shockwave.image_yscale = 2.5;
                }
            }
            else
            {
                alarm[3] = 50;
            }
        }
    }
}

