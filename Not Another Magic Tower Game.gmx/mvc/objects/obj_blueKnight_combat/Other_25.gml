if(bubbleDestroyCount >= 50)
{
    if(!global.achievements[47])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 47;
        global.achievements[47] = true;
    }
}


