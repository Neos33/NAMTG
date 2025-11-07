if(status == 1)
{
    if(!global.cooldown && !global.godmod)
    {   
        global.monsterSuperCritical = true;
        event_inherited();
    }
}
event_inherited();

