p1R += 1;

if(phase == 0)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        phase = 1;
        timeAlpha = 0;
        limitTime = 1000;
        totalTime = 0;
        timeColor = c_red;
        timeStart = false;
        alarm[10] = 0;
        if(player_is_alive())
        {
            //alarm[0] = 200;
            alarm[4] = 80;
            alarm[9] = 80;
            callSCTime = 50;
            callSC = true;
        }
        sound_fix(snd_touhou_bonus1);
        instance_create(400,200, obj_spellCardClearEffect);
    }
}

if(phase == 1)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        phase = 2;
        timeAlpha = 0;
        limitTime = 1000;
        totalTime = 0;
        timeColor = c_red;
        timeStart = false;
        alarm[10] = 0;
        obj_beFinalPhase1.alarm[3] = 0;
        obj_beFinalPhase1.alarm[4] = 0;
        obj_beFinalPhase1.alarm[5] = 0;
        obj_beFinalPhase1.alarm[6] = 0;
        obj_beFinalPhase2.alarm[3] = 0;
        obj_beFinalPhase2.alarm[4] = 0;
        obj_beFinalPhase2.alarm[5] = 0;
        obj_beFinalPhase2.alarm[6] = 0;
        obj_beFinalPhase3.alarm[3] = 0;
        obj_beFinalPhase1.alarm[7] = 1;
        obj_beFinalPhase2.alarm[7] = 1;
        obj_beFinalPhase3.alarm[5] = 1;
        if(player_is_alive())
        {
            //alarm[0] = 200;
            //alarm[4] = 130;
            obj_beFinalPhase1.alarm[8] = 130;
            obj_beFinalPhase2.alarm[8] = 130;
            obj_beFinalPhase3.alarm[6] = 130;
            alarm[9] = 80;
            p2R1 = 200;
            p2R2 = 100;
            p2Dir1 = 180;
            p2Dir2 = 0;
            p2Rdir = 0;
            p2Adir = 0;
            p2RNum = 0;
            p2ANum = 3;
            callSCTime = 50;
            callSC = true;
        }
        sound_fix(snd_touhou_bonus1);
        instance_create(400, 200, obj_spellCardClearEffect);
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
        phase = 3;
        timeAlpha = 0;
        limitTime = 1000;
        totalTime = 0;
        timeColor = c_red;
        timeStart = false;
        alarm[10] = 0;
        obj_beFinalPhase1.alarm[8] = 0;
        obj_beFinalPhase2.alarm[8] = 0;
        obj_beFinalPhase3.alarm[6] = 0;
        obj_beFinalPhase1.alarm[7] = 1;
        obj_beFinalPhase2.alarm[7] = 1;
        if(player_is_alive())
        {
            //alarm[0] = 200;
            //alarm[4] = 130;
            obj_beFinalPhase1.hspeed = 0;
            obj_beFinalPhase1.vspeed = 0;
            obj_beFinalPhase1.x = 250;
            obj_beFinalPhase1.y = 250;
            obj_beFinalPhase2.hspeed = 0;
            obj_beFinalPhase2.vspeed = 0;
            obj_beFinalPhase2.x = 550;
            obj_beFinalPhase2.y = 250;
            obj_beFinalPhase3.hspeed = 0;
            obj_beFinalPhase3.vspeed = 0;
            obj_beFinalPhase3.x = 400;
            obj_beFinalPhase3.y = 200;
            obj_beFinalPhase2.moveDir = 1;
            alarm[5] = 130;
            alarm[9] = 80;
            callSCTime = 50;
            callSC = true;
        }
        sound_fix(snd_touhou_bonus1);
        instance_create(400, 200, obj_spellCardClearEffect);
    }
}

if(phase == 3)
{
    if(totalTime >= limitTime)
    {
        with(obj_combatPlayerKiller)
        {
            instance_destroy();
        }
        with(obj_beFinalRodElement)
        {
            instance_destroy();
        }
        with(obj_beFinalMagicCircle)
        {
            instance_destroy();
        }
        with(obj_beFinalPhasePrototype)
        {
            instance_destroy();
        }
        alarm[6] = 0;
        if(player_is_alive())
        {
            if(!finalEnd)
            {
                finalEnd = true;
                alarm[7] = 1;
            }
        }
    }
}

if(phase == 4)
{
    if(!global.GalleryBossFight)
    {
        global.monsters[202] = true;
        global.monsters[203] = true;
        global.monsters[204] = true;
        if(global.special[2])
        {
            global.expBonus += floor(500 * 1.5);
        }
        else
        {
            global.expBonus += 500;
        }
    }
    phase = 5;
    alarm[8] = 70;
}

if(callSC)
{
    callSCTime -= 1;
    if(callSCTime <= 0)
    {
        if(phase == 2)
        {
            obj_beFinalPhase1.alarm[7] = 0;
            obj_beFinalPhase2.alarm[7] = 0;
            p2Start = true;
        }
        callSC = false;
        sound_fix(snd_touhou_spellcard);
    }
}

if(phase == 2 && p2Start)
{
   if(p2Rdir == 0)
   {
        if(p2RNum < 3)
        {
            p2RNum += 0.1;
        }
        else
        {
            p2Rdir = 1;
        }
   }
   else if(p2Rdir == 1)
   {
        if(p2RNum > -3)
        {
            p2RNum -= 0.1;
        }
        else
        {
            p2Rdir = 0;
        }
   }
   if(p2Adir == 0)
   {
        if(p2ANum < 10)
        {
            p2ANum += 0.03;
        }
        else
        {
            p2Adir = 1;
        }
   }
   else if(p2Adir == 1)
   {
        if(p2ANum > -10)
        {
            p2ANum -= 0.03;
        }
        else
        {
            p2Adir = 0;
        }
   }
   p2R1 += p2RNum;
   p2R2 -= p2RNum / 10;
   p2Dir1 += p2ANum;
   p2Dir2 += p2ANum;
   obj_beFinalPhase1.x = obj_beFinalPhase3.x + p2R1 * cos(degtorad(p2Dir1));
   obj_beFinalPhase1.y = obj_beFinalPhase3.y - p2R2 * sin(degtorad(p2Dir1));
   obj_beFinalPhase2.x = obj_beFinalPhase3.x + p2R1 * cos(degtorad(p2Dir2));
   obj_beFinalPhase2.y = obj_beFinalPhase3.y - p2R2 * sin(degtorad(p2Dir2));
}

            /*p2R1 = 200;
            p2R2 = 100;
            p2Rdir = 0;
            p2Adir = 0;
            p2RNum = 0;
            p2ANum = 0;
            
with(obj_beFinalPhase1)
   {
        p2dir = point_direction(obj_beFinalPhase3.x, obj_beFinalPhase3.y, x, y);
        p2dir += other.p2ANum;
        x = obj_beFinalPhase3.x + 200 * cos(degtorad(p2dir));
        y = obj_beFinalPhase3.y - 100 * sin(degtorad(p2dir));
   }
   with(obj_beFinalPhase2)
   {
        p2dir = point_direction(obj_beFinalPhase3.x, obj_beFinalPhase3.y, x, y);
        p2dir += other.p2ANum;
        x = obj_beFinalPhase3.x + other.p2R1 * cos(degtorad(p2dir));
        y = obj_beFinalPhase3.y - other.p2R2 * sin(degtorad(p2dir));
   }

/* */
/*  */
