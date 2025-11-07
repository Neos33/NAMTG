if(image_alpha >= 0.5)
{
    event_inherited();
    if(status != 1)
    {
        player.y -= 10;
        status = 1;
        obj_guardlv2_combat.windTime = 0;
        obj_guardlv2_combat.hspeed = 0;
        alarm[11] = 10;
        obj_guardlv2_combat.teleport2 = true;
        obj_guardlv2_combat.teleport2Delay = 20;
    }
}

