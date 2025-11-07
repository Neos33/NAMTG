if(phase == 1)
{
    ang += 5;
    if(r != 16)
    {
        gap = 16 - r;
        r += 2 * sign(gap);
    }
    combatTime += 1;
    y = startY + 12 * sin(degtorad(5 * combatTime));
    if(combatTime == timing[tIndex])
    {
        with(obj_shiliuBullet1)
        {
            event_user(15);
        }
        r = 64;
        with(obj_bgBlack)
        {
            event_user(0);
        }
        with(obj_shiliuEye)
        {
            image_xscale = 2;
            image_yscale = 2;
        }
        with(obj_phase1Shaker)
        {
         alarm[0] = 1;
        }
        if(tIndex < maxIndex)
        {
            tIndex += 1;
        }
        else
        {
            if(!triggered)
            {
                tIndex = 0;
                combatTime = -30;
                instance_create(x,y,obj_viewHFlip);
                triggered = true;
            }
            else
            {
                if(!player_is_alive())
                {
                  phase = -1;
                }
                else
                {
                    instance_create(x,y,obj_roomChangeEffect1);
                    combatTime = 0;
                    phase = 2;
                }
            }
        }
    }
}

if(phase == 2 && room == rFaShiliu02)
{
    combatTime += 1;
    y = 304 - 64 * sin(degtorad(combatTime * 2));
}

if(phase == 3 && room == rFaShiliu03)
{
    combatTime += 1;
    y = 304 - 64 * sin(degtorad(combatTime * 2));
}

if(phase == 4 && room == rFaShiliu04)
{
    combatTime += 1;
    y = 304 - 64 * sin(degtorad(combatTime * 2));
}

if(phase == 6 && room == rFaShiliu05)
{
    combatTime += 1;
    y = 120 - 32 * sin(degtorad(combatTime * 2));
}

if(phase == 7 && room == rFaShiliu06)
{
    combatTime += 1;
    y = 304 - 32 * sin(degtorad(combatTime * 2));
}

if(phase == 8 && room == rFaShiliu07)
{
    combatTime += 1;
    y = 304 - 32 * sin(degtorad(combatTime * 2));
}

if(global.special[7])
{
    if(instance_exists(obj_monsterBattlePrototype))
    {
        if(obj_monsterBattlePrototype.x > __view_get( e__VW.XView, 0 ) && obj_monsterBattlePrototype.x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) && obj_monsterBattlePrototype.y > __view_get( e__VW.YView, 0 ) && obj_monsterBattlePrototype.y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ))
        {
            global.isTrack = true;
            with(obj_monsterBattlePrototype)
            {
                global.trackX = x + (sprite_width / 2 - sprite_xoffset) * image_xscale;
                global.trackY = y + (sprite_height / 2 - sprite_yoffset) * image_yscale;
            }
        }
    }
}

