if(!global.achievements[94])
{
    var ch = instance_create(0,608,obj_achievements);
    ch.index = 94;
    global.achievements[94] = 1;
}
with(obj_tlController)
{
    instance_destroy();
}

