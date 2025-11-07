if(blendStart)
{
    if(blend < blendLimit)
    {
        blend += blendSpd;
    }
    else
    {
        blendStart = false;
        alarm[4] = 15 + 15 * obj_tl_burningKnight.hp / obj_tl_burningKnight.oHP;
    }
}

