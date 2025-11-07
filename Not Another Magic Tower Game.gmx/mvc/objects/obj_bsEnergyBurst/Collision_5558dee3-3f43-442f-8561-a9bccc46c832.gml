if(image_alpha > 0.8)
{
    if(!global.cooldown && !global.godmod)
    {   
        if(!global.Blockable)
        {
            global.monsterSuperCritical = true;
        }
        event_inherited();
    }
}

