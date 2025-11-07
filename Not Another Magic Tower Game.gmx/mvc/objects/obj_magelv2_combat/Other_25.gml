if(isFire && isWater && isGold && isDark && isGrass)
{
    if(!global.achievements[42])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 42;
        global.achievements[42] = true;
    }
}

