with(obj_swordMaster_combat)
{
    if(player.x > 400)
    {
        tx = 192;
    }
    else
    {
        tx = 608;
    }
    ty = 368;
    status = 2;
    move_towards_point(tx, ty, 15);
}

