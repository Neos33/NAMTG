//
if(ind == 7)
{
    with(obj_swordMaster_combat)
    {
        tx = RangeClamp(player.x, 160, 640);
        ty = 368;
        spd = 10;
        move_towards_point(tx,ty, spd);
        alarm[other.ind] = 1;
    }
}
else
{
    obj_swordMaster_combat.alarm[ind] = 1;
}

