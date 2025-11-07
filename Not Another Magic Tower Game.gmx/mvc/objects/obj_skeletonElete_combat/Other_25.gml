if(object_exists(obj_skeletonHead) && (obj_skeletonHead.hspeed * obj_skeletonHead.vspeed) != 0)
{
    if(!global.achievements[40])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 40;
        global.achievements[40] = true;
    }
}

