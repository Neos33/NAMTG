if(wind)
{
    if(windDelay > 0)
    {
        windDelay -= 1;
        if(windDelay == 0)
        {
            blast = instance_create(x,y, obj_tlGuardlv2blast);
            blast.parent = instance_position(x,y,obj_tlGuardLv2);
        }
    }
    else
    {
        if(rdir == 1)
        {
            if(image_xscale > -1)
            {
                image_xscale -= rspd;
            }
            else
            {
                rdir = 2;
                if(sound)
                    sound_fix(sndSwing1);
            }
        }
        else if(rdir == 2)
        {
            if(image_xscale < 1)
            {
                image_xscale += rspd;
            }
            else
            {
                rdir = 1;
            }
        }
        if(rspd < 1 && windTime > 0)
        {
            rspd += 0.02;
        }
        hspeed += sign(blastX - x)*0.2;
        if(image_xscale > 1)
        {
            image_xscale = 1;
        }
        if(image_xscale < -1)
        {
            image_xscale = -1;
        }
        image_alpha = abs(image_xscale) / 2 + 0.5;
        if(windTime > 0)
        {
            windTime -= 1;
        }
        else
        {
            if(rspd > 0)
            {
                rspd -= 0.02;
            }
            else
            {
                image_xscale = 1;
                image_alpha = 1;
                sprite_index = spr_guardlv2Combat;
                hspeed = 0;
                blast.alarm[10] = 1;
                wind = false;
                alarm[3] = 5;
            }
        }
    }
}

