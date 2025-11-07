if(abs(player.x - 516) > 500)
{
    if(!global.achievements[73])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 73;
        global.achievements[73] = 1;
    }
}

