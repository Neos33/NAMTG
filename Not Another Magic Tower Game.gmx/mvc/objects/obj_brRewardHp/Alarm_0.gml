if(!is_message())
{
    if(!global.achievements[achInd])
    {
        if(!instance_exists(obj_achievements))
        {
            ch = instance_create(0,608,obj_achievements);
            ch.index = achInd;
            global.achievements[achInd] = 1;
        }
    }
    instance_destroy();
}
else
{
    alarm[0] = 1;
}

