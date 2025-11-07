image_speed=2/3;
speed=0;
if(!global.achievements[107])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 107;
    global.achievements[107] = 1;
}

