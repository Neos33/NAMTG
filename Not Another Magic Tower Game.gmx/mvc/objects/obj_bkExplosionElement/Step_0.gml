if(blendStart)
{
    if(blend < blendLimit)
    {
        blend += blendSpd;
    }
    else
    {
        blendStart = false;
        alarm[4] = 15 + 15 * obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP;
    }
}

