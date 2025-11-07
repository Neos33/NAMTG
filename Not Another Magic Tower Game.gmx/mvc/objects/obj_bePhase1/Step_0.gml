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

/// Phases finished
// End of phase 1, use spellcard
if(phase == 1)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        with(obj_controlTop)
        {
            instance_destroy();
        }
        with(obj_controlBottom)
        {
            instance_destroy();
        }
        with(obj_controlMiddle)
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
        ang = 0;
        blink = true;
        blinkCount = 4;
        alarm[10] = 70;
        alarm[8] = 0;
        alarm[2] = 0;
        alarm[1] = 0;
        if(player_is_alive())
        {
            alarm[0] = 200;
            alarm[4] = 180;
            alarm[5] = 190;
            alarm[6] = 50;
            depth = 0;
        }
        sound_fix(snd_touhou_bonus1);
        instance_create(x,y, obj_spellCardClearEffect);
    }
}

// Defeated
if(phase == 2)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        with(obj_controlTop)
        {
            instance_destroy();
        }
        with(obj_controlBottom)
        {
            instance_destroy();
        }
        with(obj_beBossPhase1Bubble)
        {
            instance_destroy();
        }
        with(obj_beMagicCircle)
        {
            instance_destroy();
        }
        alarm[0] = 0;
        alarm[6] = 0;
        targetX = 400;
        targetY = 200;
        if(player_is_alive())
        {
            instance_create(x,y, obj_spellCardClearEffect);
            obj_beBattleController.alarm[1] = 120;
            sound_fix(snd_touhou_defeated);
            //instance_create(x, y, objTouhouDeathEffect);
            instance_destroy();
        }
    }
}

/// Magic circle attach
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
