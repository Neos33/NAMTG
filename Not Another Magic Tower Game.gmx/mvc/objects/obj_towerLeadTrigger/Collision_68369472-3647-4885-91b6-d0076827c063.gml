if(!global.story[36])
{
    if(!triggered)
    {
        player.frozen = true;
        player.vspeed = 0;
        sound_fix(sndExpMax);
        triggered = true;
        global.story[36] = true;
        p = instance_create(480,320,movingPlatform);
        p.visible = false;
        alarm[11] = 50;
        alarm[10] = 10;
    }
}

