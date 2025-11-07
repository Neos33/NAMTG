if(image_angle == 90)
{
    if(!global.achievements[45])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 45;
        global.achievements[45] = true;
    }
}

