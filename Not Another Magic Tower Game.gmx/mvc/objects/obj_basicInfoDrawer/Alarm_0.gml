if(global.expBonus > 0)
{   
    if(!special)
    {
        if(!isSound || !sound_isplaying(sndExpGet)) {
            sound_stop(sndExpGet);
            sound_fix(sndExpGet);
            isSound = true;
            if(global.expBonus > levelRequired)
            {
                amount = ceil(levelRequired / 40);
            }
            else
            {
                amount = ceil(global.expBonus / 40);
            }
        }
        if(amount > global.expBonus) {
            amount = global.expBonus;
        }
        if(amount > (levelRequired - levelExp))
        {
            finalAmount = levelRequired - levelExp;
        }
        else
        {
            finalAmount = amount;
        }
        global.expBonus -= finalAmount;
        global.playerExp += finalAmount;
        currentExp += finalAmount;
        global.levelExp += finalAmount;
        levelExp += finalAmount;
        if(levelExp == levelRequired) {
            instance_create(142,161,obj_levelupFlash);
            sound_stop(sndExpGet);
            sound_fix(sndExpMax);
            isSound = false;
            alarm[1] = 15;
        }
        else
        {
            alarm[0] = 2;
        }
    }
    else {
        if((global.levelExp + global.expBonus) >= global.levelRequired[global.currentLevel])
        {
            global.levelExp += global.expBonus - global.levelRequired[global.currentLevel];            
            global.currentLevel += 1;      
            levelRequired = global.levelRequired[global.currentLevel];
            levelupBonus(a_bns[global.currentLevel], d_bns[global.currentLevel], h_bns[global.currentLevel], k1_bns[global.currentLevel], k2_bns[global.currentLevel], k3_bns[global.currentLevel], k4_bns[global.currentLevel], k5_bns[global.currentLevel]);     
        }
        else
        {
            global.levelExp += global.expBonus;
        }
        levelExp = global.levelExp;
        global.playerExp += global.expBonus;
        global.expBonus = 0;
    }
}
else {
    isSound = false;
    sound_stop(sndExpGet);
}

