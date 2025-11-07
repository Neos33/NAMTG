if(phase == 5)
{
    if(abs(image_xscale) > 0.05)
    {
        image_xscale -= sign(image_xscale) * 0.05;
        image_yscale += 0.1;
    }
    else
    {
        alarm[11] = 10;
        phase = -1;
    }
}
else if(phase == 6)
{
    if(abs(image_xscale) < 1)
    {
        if(isRight)
        {
            image_xscale += 0.05;
        }
        else
        {
            image_xscale -= 0.05;        
        }
        image_yscale -= 0.1;
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
        if(waitTime == 10)
        {   
            waitTime = 0;
            if(targetY > 400)
            {
                if(isRight)
                {
                    var shockwave = instance_create(x +20, y, obj_magicianlv2Cannon);
                    shockwave.image_xscale = 2.5;
                    shockwave.image_yscale = 2.5;
                }  
                else
                {
                    var shockwave = instance_create(x -20, y, obj_magicianlv2Cannon);
                    shockwave.image_xscale = -2.5;
                    shockwave.image_yscale = 2.5;
                }
                dashCount += 1;
                phase = -1;
                alarm[10] = 30;
            }
            else
            {
                dashCount = 0;
                phase = 1;
                alarm[3] = 50;
                alarm[4] = 300;
            }
        }
    }
}

/*if(phase == 2 && instance_number(obj_magicianlv2Portal1) > 0)
{
    with(obj_magicianlv2Bullet)
    {
        if(status != 1)
        {
            if(dir >= 0 && dir <= 60)
            {
                if(point_distance(x,y, 600,202) < 87)
                {
                    status = 1;
                    targetX = 600;
                    targetY = 202;
                    spd = 3;
                }
            }
            else if(dir > 60 && dir < 120)
            {
                if(point_distance(x,y, 400,131) < 87)
                {
                    status = 1;
                    targetX = 400;
                    targetY = 131;
                    spd = 3;
                }
            }
            else if(dir > 120 && dir < 180)
            {
                if(point_distance(x,y, 200,202) < 87)
                {
                    status = 1;
                    targetX = 200;
                    targetY = 202;
                    spd = 3;
                }
            }
        }
    }
}

/* */
if(phase == 10)
{
    if(phase10cd > 0)
    {
        phase10cd -= 1;
    }
    else
    {
        pAngle = 20 + 47 * pCount;
        px = 400 + 350 * cos(degtorad(pAngle));
        py = 512 - 180 * sin(degtorad(pAngle));
        cc = instance_create(px,py, obj_magicianlv2Portal2);
        pCount += 1;
        if(pCount < 4)
        {
            phase10cd = 70;
        }
        else
        {
            phase = 11;
            pCount = 0;
            phase11cd = 70;
        }
    }
}

/* */
if(phase == 11)
{
    if(phase11cd > 0)
    {
        phase11cd -= 1;
    }
    else
    {
        var wave = instance_create(x,y + 32,obj_magicianlv2Superwave);
        wave.vspeed = 1;
        phase = 12;
    }
}

/* */
/*  */
