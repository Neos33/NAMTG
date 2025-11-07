if(image_alpha > 0.8 && !dash)
{
    event_inherited();
}
if(dash && !obj_tl_draculaRealBody.clawHit)
{
    obj_tl_draculaRealBody.clawHit = true;
    global.monsterSuperCritical = true;
    if(player.vspeed > -3)
    {
        player.vspeed = -3;
    }
}

