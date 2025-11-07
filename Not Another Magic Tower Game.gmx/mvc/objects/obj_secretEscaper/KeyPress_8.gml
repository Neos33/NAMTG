if(object_exists(player) && player.x > 0)
{
    if(!global.achievements[11])
    {
        ch = instance_create(0,608,obj_achievements);
        ch.index = 11;
        global.achievements[11] = true;
    }
    player.x = targetX;
    player.y = targetY;
    room_goto(roomTo);
}

