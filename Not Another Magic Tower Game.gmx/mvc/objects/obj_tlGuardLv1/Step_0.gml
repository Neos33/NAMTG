if(phase == "jump")
{
    if(vspeed > 0)
    {
        gravity = 0;
        instance_create(x,y, obj_teleport);
        sound_fix(sndTeleport);
        x = -64; 
        y = -64;
        speed = 0;
        alarm[5] = 40;
        phase = "init";
    }
    else
    {
        vspeed += 0.8;
    }
}

if(phase == "smash")
{
    if(abs(vspeed) < 0.1)
    {
        vspeed = 0;
        hspeed = 0;
        instance_create(x,y, view_shaker1);
        sound_fix(sndEarth1);
        key.smashEnd = true;
        alarm[6] = 30;
        phase = "init";
    }
}

