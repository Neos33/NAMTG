if(!onCollide)
{
    onCollide = true;
    if(status == 0)
    {
        global.monsters[ind] = 1;
        global.TotalKills += 1;
        sound_fix(sndDeath);
        if(global.special[2])
        {
            global.expBonus += floor(ex * 1.5);
        }
        else
        {
            global.expBonus += ex;
        }
        obj_basicInfoDrawer.alarm[0] = 1;
        instance_destroy();
    }
    else if(status == 1)
    {
        if(global.skipMonsters)
        {
            global.monsters[ind] = 1;
            global.TotalKills += 1;
            sound_fix(sndDeath);
            if(global.special[2])
            {
                global.expBonus += floor(ex * 1.5);
            }
            else
            {
                global.expBonus += ex;
            }
            obj_basicInfoDrawer.alarm[0] = 1;
            instance_destroy()
        }
        else
        {
            global.inCombat = true;
            global.combatIndex = ind;
            global.attackDamage = global.attack - def;
            global.defenseDamage = atk - global.defense;
            if(global.MagicCloak)
            {
                global.MagicHP = global.TotalKills;
            }
            global.FullHp = global.hp;
            alarm[0] = 1;
        } 
    }
    else if(status == 2)
    {
        with(player)
        {
            killPlayer();
        }
    }
}

