if(!boomHit)
{
    if(!global.cooldown && !global.godmod)
    {
        isDmg = true;
        with(obj_bdmAncientBook)
        {
            if(onHold)
            {
                obj_bdmBoomBubble.isDmg = false;
                boom = true;
                spd = 3;
                alarm[3] = 1;
            }
        }
        if(isDmg)
        {
            global.monsterSuperCritical = true;
            event_inherited();
        }
        else
        {
            sound_fix(sndgras);
            boomHit = true;
        }
    }
}

