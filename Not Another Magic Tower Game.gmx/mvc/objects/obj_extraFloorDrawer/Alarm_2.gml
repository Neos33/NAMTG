if(!global.achievements[58])
{
    ach58 = true;
    for(var i = 0; i < 6; i+=1)
    {
        if(!global.floorTrigger[i])
        {
            ach58 = false;
        }
    }
    if(ach58)
    {
        if(!instance_exists(obj_achievements))
        {
            var ch = instance_create(0,608,obj_achievements);
            ch.index = 58;
            global.achievements[58] = 1;
        }
        else
        {
            alarm[2] = 1;
        }
    }
}

