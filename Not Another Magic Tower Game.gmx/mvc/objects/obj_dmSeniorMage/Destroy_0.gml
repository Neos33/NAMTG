with(obj_darkMage_combat)
{
    if(hp > 80)
    {
        darkCount = 3;
        alarm[3] = 70;
            hp -= global.attackDamage;
        cooldown = true;
        if(global.special[8])
        {
            alarm[1] = 25;
        }
        else
        {
            alarm[1] = 50;
        }
        alarm[0] = 1;
    }
    else
    {
        sound_fix(sndBEDevilLaugh);
        alarm[11] = 80;
    }
}

