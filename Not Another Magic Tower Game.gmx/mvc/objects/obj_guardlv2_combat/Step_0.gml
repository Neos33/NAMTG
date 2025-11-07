if(wind)
{
    if(windDelay > 0)
    {
        windDelay -= 1;
        if(windDelay == 0)
        {
            instance_create(x,y, obj_guardlv2blast);
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
                audio_playsound(sndSwing1);
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
            rspd += 0.01;
        }
        if(player.x < x)
        {
            hspeed -= 0.2;
        }
        else
        {
            hspeed += 0.2;
        }
        if(image_xscale > 1)
        {
            image_xscale = 1;
        }
        if(image_xscale < -1)
        {
            image_xscale = -1;
        }
        image_alpha = abs(image_xscale) / 2 + 0.5;
        move_bounce_solid(false);
        if(windTime > 0)
        {
            windTime -= 1;
        }
        else
        {
            if(rspd > 0)
            {
                rspd -= 0.01;
            }
            else
            {
                image_xscale = 1;
                image_alpha = 1;
                sprite_index = spr_guardlv2Combat;
                obj_guardlv2blast.alarm[10] = 1;
                wind = false;
                teleport = true;
                teleportDelay = 15;
            }
        }
    }
}

if(teleport)
{
    if(teleportDelay > 0)
    {
        teleportDelay -= 1;
    }
    else
    {
        teleport = false;
        audio_playsound(sndTeleport);
        instance_create(x,y, obj_teleport2);
        x = -32;
        y = -32;
        alarm[4] = 20;
    }
}

if(teleport2)
{
    if(teleport2Delay > 0)
    {
        teleport2Delay -= 1;
    }
    else
    {
        x = -32; 
        y = -32;
        image_xscale = 1;
        sprite_index = spr_guardlv2Combat;
        teleport2 = false;
        audio_playsound(sndTeleport);
        instance_create(x,y, obj_teleport2);
        alarm[11] = 20;
    }
}

if(smash)
{
    player.y = y;
    if(obj_guardlv2SmashKey.x - 32 < 6)
    {
        player.x = 6;
    }
    else
    {
        player.x = obj_guardlv2SmashKey.x - 32;
    }
}

if(teleport3)
{
    if(teleport3Delay > 0)
    {
        teleport3Delay -= 1;
        if(teleport3Delay == 0)
        {
            hspeed = 0;
            vspeed = 0;
            gravity = 0;
        }
    }
    else
    {
        teleport3 = false;
        audio_playsound(sndTeleport);
        instance_create(x,y, obj_teleport2);
        x = -32;
        y = -32;
        alarm[4] = 20;
    }
}

