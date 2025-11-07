if(ind < 10)
{
    with(obj_swordMaster_combat)
    {
        sx = x;
        sy = y;
        event_user(0);
        alarm[other.ind] = 20;
    }
}
else
{
    obj_swordMaster_combat.alarm[ind] = 10;
}
instance_destroy();

