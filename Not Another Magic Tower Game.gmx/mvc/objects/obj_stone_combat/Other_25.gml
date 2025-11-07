if(global.playerHP == global.hp && (global.combatTime >= room_speed * 30))
{
    if(!global.achievements[28])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 28;
        global.achievements[28] = true;
    }
}

