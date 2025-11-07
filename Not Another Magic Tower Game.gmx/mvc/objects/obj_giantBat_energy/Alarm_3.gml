if(point_distance(obj_giantBat_combat.x, obj_giantBat_combat.y, x, y) > spd)
{
    move_towards_point(obj_giantBat_combat.x, obj_giantBat_combat.y, spd);
    spd += 0.1;
    alarm[3] = 1;
}
else
{
    with(obj_giantBat_combat)
    {
        if(targetScale < 10)
        {
            targetScale += 1;
        }
    }
    hspeed = 0;
    vspeed = 0;
    alarm[4] = 1;
}

