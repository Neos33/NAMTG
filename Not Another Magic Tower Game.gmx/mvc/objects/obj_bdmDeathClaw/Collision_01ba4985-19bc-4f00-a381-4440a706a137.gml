if(start)
{
    if(!global.cooldown && !global.godmod)
    {   
        criticalType = choose(0,1,2);
        if(criticalType == 1)
        {
            global.monsterCritical = true;
        }
        else if(criticalType == 2)
        {
            global.monsterSuperCritical = true;
        }
        event_inherited();
    }
}

