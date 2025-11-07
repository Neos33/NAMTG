if(global.combatTime >= room_speed * 90)
{
    if(!global.achievements[35])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 35;
        global.achievements[35] = true;
    }
}

