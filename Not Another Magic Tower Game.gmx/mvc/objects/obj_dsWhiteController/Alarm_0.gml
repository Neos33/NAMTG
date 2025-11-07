if(r > 0)
{
    r -= 2;
    angle += 5;
    alarm[0] = 1;
}
else
{
    sound_fix(sndExpMax);
    with(obj_dsWhiteCrystalStart)
    {
        instance_destroy();
    }
    instance_create(obj_darkSummoner_combat.x, obj_darkSummoner_combat.y, obj_dsWhiteCrystal);
    instance_create(obj_darkSummoner_combat.x, obj_darkSummoner_combat.y, obj_dsWhiteCrystalEffect);
}

