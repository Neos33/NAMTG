if(room != rFaroSideTower || global.floorStageLife > 0)
{
    obj_extraFloorDrawer.alarm[0] = 1;
    sound_fix(sndDeath);
    instance_destroy();
}
else
{
    with(other)
    {
        killPlayer();
    }
}

