if(global.achievements[99]) exit;
for(var i = 0; i < 9; i += 1)
{
    if(global.challengeSets[i])
    {
        if(!global.achievements[99])
        {
            if(!instance_exists(obj_achievements))
            {
                ch = instance_create(0,608,obj_achievements);
                ch.index = 99;
                global.achievements[99] = 1;
            }
        }
    }
}

