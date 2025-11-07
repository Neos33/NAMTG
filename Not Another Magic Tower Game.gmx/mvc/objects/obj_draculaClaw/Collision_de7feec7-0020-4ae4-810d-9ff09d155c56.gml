if(image_alpha > 0.8 && !dash)
{
    event_inherited();
}
if(dash && !obj_draculaRealBody.clawHit)
{
    obj_draculaRealBody.clawHit = true;
    global.monsterSuperCritical = true;
    if(player.vspeed > -3)
    {
        player.vspeed = -3;
    }
}

