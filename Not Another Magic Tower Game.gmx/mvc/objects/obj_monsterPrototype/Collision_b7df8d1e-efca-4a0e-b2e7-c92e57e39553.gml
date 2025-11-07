with(other)
{
    instance_destroy();
}
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
        if(!global.achievements[8])
        {
            global.achievements[8] = true;
            ch = instance_create(0,608,obj_achievements);
            ch.index = 8;
        }
        instance_destroy();
    }

