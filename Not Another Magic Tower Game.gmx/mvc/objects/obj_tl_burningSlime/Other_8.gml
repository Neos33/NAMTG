if(pType == 1)
{
    sound_fix(sndEarth1);
    instance_create(0,0,view_shaker1);
    var p1 = instance_create(x, y + 48, obj_bsShark);
    p1.image_xscale = 2;
    p1.hspeed = -2;
    var p2 = instance_create(x, y + 48, obj_bsShark);
    p2.hspeed = 2;
    p2.image_xscale = -2;
}

