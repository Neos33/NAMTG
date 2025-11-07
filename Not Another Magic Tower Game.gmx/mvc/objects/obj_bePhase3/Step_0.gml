dis = point_distance(targetX, targetY, x, y);
if(dis < 2)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    speed = 0;
}
else
{
    spd = sqrt(dis) / 2.5;
    if(spd < 2)
    {
        spd = 2;
    }
    move_towards_point(targetX,targetY,spd);
}

if(phase == 1)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        with(obj_beMagicCircle)
        {
            instance_destroy();
        }
        phase = 2;
        timeAlpha = 0;
        limitTime = 1500;
        totalTime = 0;
        timeColor = c_red;
        timeStart = false;
        targetX = 400;
        targetY = 200;
        blink = true;
        blinkCount = 4;
        alarm[10] = 70;
        alarm[8] = 0;
        alarm[2] = 0;
        alarm[1] = 0;
        if(player_is_alive())
        {
            alarm[9] = 50;
            alarm[2] = 150;
            depth = 0;
        }
        instance_create(x,y, obj_spellCardClearEffect);
        sound_fix(snd_touhou_bonus1);
    }
}

if(phase == 2)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        with(obj_beBossPhase3Bullet2)
        {
            instance_destroy();
        }
        with(obj_beMagicCircle)
        {
            instance_destroy();
        }
        alarm[0] = 0;
        alarm[2] = 0;
        alarm[4] = 0;
        targetX = 400;
        targetY = 200;
        if(player_is_alive())
        {
            instance_create(x,y, obj_spellCardClearEffect);
            sound_fix(snd_touhou_defeated);
            obj_beBattleController.alarm[3] = 120;
            instance_destroy();
        }
    }
}

if(instance_exists(obj_beMagicCircle))
{
    obj_beMagicCircle.x = x;
    obj_beMagicCircle.y = y;
}

/*if(phase == 2)
{
    if(blendColor < 255)
    {
        blendColor += 5;
        image_blend = make_color_rgb(blendColor,blendColor,blendColor);
    }
}

/* */
/*  */
