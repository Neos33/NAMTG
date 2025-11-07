if(obj_pokemonKidInfo.hpPer <= 0.25)
{
    if(!global.achievements[69])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 69;
        global.achievements[69] = 1;
    }
}

