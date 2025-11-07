if(!dialog) exit;
if(keyboard_check_pressed(global.leftbutton))
{
    if(type == -1)
    { 
        sound_fix(sndJump);
        if(ind mod 2 == 1)
        {
            ind -= 1;
        }
    }
    else if(type == 0)
    {
        sound_fix(sndJump);
        if(subInd mod 2 == 1)
        {
            subInd -= 1;
        }
    }
}

if(keyboard_check_pressed(global.rightbutton))
{
    if(type == -1)
    { 
        sound_fix(sndJump);
        if(ind mod 2 == 0)
        {
            ind += 1;
        }
    }
    else if(type == 0)
    {
        sound_fix(sndJump);
        if(subInd mod 2 == 0)
        {
            subInd += 1;
        }
    }
}

if(keyboard_check_pressed(global.downbutton))
{
    if(type == -1)
    { 
        sound_fix(sndJump);
        if(ind < 4)
        {
            ind += 2;
        }
    }
    else if(type == 0)
    {
        sound_fix(sndJump);
        if(subInd <= 3)
        {
            subInd += 2;
        }
    }
}

if(keyboard_check_pressed(global.upbutton))
{
    if(type == -1)
    { 
        sound_fix(sndJump);
        if(ind > 1)
        {
            ind -= 2;
        }
    }
    else if(type == 0)
    {
        sound_fix(sndJump);
        if(subInd >= 2)
        {
            subInd -= 2;
        }
    }
}

if(!dialog) exit;
if(keyboard_check_pressed(global.jumpbutton) || keyboard_check_pressed(global.shotbutton) || keyboard_check_pressed(vk_enter))
{
    if(type == -1)
    {
        if(ind == 0)
        {
            type = ind;
            subInd = 0;
        }
        else if(ind == 1)
        {
            hpExchange = get_integer("Provide the number of times you would like to exchange HP for 5 exp (0~" + string(global.hp - 1) + ")", 0);
            if(hpExchange >= 0 && hpExchange < global.hp)
            {
                if(hpExchange > 0)
                {
                    //global.hp -= hpExchange;
                    global.expBonus += hpExchange * 5;
                    type = 1;
                    obj_basicInfoDrawer.alarm[0] = 1;
                    alarm[0] = 1;
                    dealMsg = "HP-" + string(hpExchange) + ",EXP +" + string(global.expBonus);
                }
            }
            else
            {
                show_message("Invalid HP ammount.");
            }
        }
        else if(ind == 2)
        {
            maxAtk = floor((global.hp - 1)/400);
            atkExchange = get_integer("Provide the number of times you would like to exchange HP for 1 Attack (0~" + string(maxAtk) + ")", 0);
            if(atkExchange >= 0 && atkExchange <= maxAtk)
            {
                if(atkExchange > 0)
                {
                    hpExchange = atkExchange * 400;
                    //global.hp -= hpExchange;
                    global.attack += atkExchange;
                    type = 1;
                    alarm[2] = 1;
                    dealMsg = "HP-" + string(hpExchange) + ",ATK +" + string(atkExchange);
                }
            }
            else
            {
                show_message("Invalid Atk ammount.");
            }
        }
        else if(ind == 3)
        {
            maxDef = floor((global.hp - 1)/150);
            defExchange = get_integer("Provide the number of times you would like to exchange HP for 2 Defense (0~" + string(maxDef) + ")", 0);
            if(defExchange >= 0 && defExchange <= maxDef)
            {
                if(defExchange > 0)
                {
                    hpExchange = defExchange * 150;
                    //global.hp -= hpExchange;
                    global.defense += defExchange*2;
                    type = 1;
                    alarm[2] = 1;
                    dealMsg = "HP-" + string(hpExchange) + ",DEF+" + string(defExchange * 2);
                }
            }
            else
            {
                show_message("Invalid Def ammount.");
            }
        }
        else if(ind == 4)
        {
            event_user(0);
            if(!global.dynamiteTutorial)
            {
                type = 1;
                alarm[9] = 2;
            }
            else
            {
                dynamiteHp = power(2, global.dynamitePurchaseTimes) * 50;
                if(show_question("Use " + string(dynamiteHp) + " HP to exchange a dynamite?"))
                {
                    hpExchange = dynamiteHp;
                    type = 1;
                    global.dynamiteNum += 1;
                    global.dynamitePurchaseTimes += 1;
                    message_add("Gay DW(Merchant): Wise choice.");
                    alarm[6] = 1;
                    dealMsg = "HP-" + string(hpExchange) + ",Dynamite+1";
                }
                else
                {
                    message_add("Gay DW(Merchant): Oh..What a shame..Then take a look at other services.");
                    trick = true;
                    trickLen = 2;
                }
            }
            //sound_fix(sndWrong);
        }
        else if(ind == 5)
        {
            instance_destroy();
        }
    }
    else if(type == 0)
    {
        if(subInd == 5)
        {
            sound_fix(sndJump);
            type = -1;
            subInd = 0;
        }
        else if(mCleared[subInd] || mLock[subInd])
        {
            sound_fix(sndWrong);
        }
        else if(!monster[subInd])
        {
            show_message(msg[subInd]);
        }
        else
        {
            if(show_question("Are you sure to use " + string(exchangeHp[subInd]) + " to skip " + monsterName[subInd] + "?"))
            {
                message_add("Gay DW(Merchant): Hmm...Hmm... Soooo Easy~");
                message_add("Gay DW(Merchant): It's done!");
                if(subInd == 1)
                {
                    global.story[23] = true;
                }
                else if(subInd == 3)
                {
                    global.clearItem[13] = true;
                    message_add("You've got the spade key.")
                }
                else if(subInd == 4)
                {
                    global.clearItem[11] = true;
                    message_add("You've got the club key.")
                }
                for(i=0;i<mCount[subInd];i+=1)
                {
                    global.monsters[mInd[subInd, i]] = true;
                }
                dialog = false;
                hpExchange = exchangeHp[subInd];
                alarm[5] = 1;
                type = 1;
                dealMsg = "HP-" + string(hpExchange);
            }
        }
    }
}

if(trick && !is_message())
{
    if(trickLen > 0)
    {
        trickLen -= 1;
    }
    else
    {
        trick = false;
        event_user(1);
    }
}

