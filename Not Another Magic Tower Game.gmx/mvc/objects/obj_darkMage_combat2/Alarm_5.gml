if(pCount > 0)
{
    pCount -= 1;
    instance_create(px[ds_list_find_value(p,pCount)], 160, obj_dmSwordPortal);
    alarm[5] = 50;
}
else
{
    shotGunCount = 30;
    if(player_is_alive())
    {
        alarm[6] = 150;
    }
}

