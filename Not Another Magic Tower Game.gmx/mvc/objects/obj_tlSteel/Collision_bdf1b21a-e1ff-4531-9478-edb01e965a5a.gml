if(start)
{
    start = false;
    vspeed = 0;
    y = other.y - 16*image_yscale;
    sound_fix(sndEarth1);
    instance_create(x,y,view_shaker1);
    for(var i=0;i<8;i+=1)
    {
        aa = instance_create(x,y,obj_tlSteelBomb);
        aa.speed = 5;
        aa.direction = i*45;
    }
    alarm[4] = 20;
}

