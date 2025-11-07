if(player.x > 450)
{
    if(!global.achievements[70])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 70;
        global.achievements[70] = 1;
    }
}

