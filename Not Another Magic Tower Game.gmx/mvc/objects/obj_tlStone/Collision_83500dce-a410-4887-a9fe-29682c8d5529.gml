if(start)
{
    start = false;
    vspeed = 0;
    y = other.y - 16*image_yscale;
    sound_fix(sndEarth1);
    instance_create(x,y,view_shaker1);
    var fa1=instance_create(x,y+32,obj_tlStoneRockShooter);
    fa1.hspd=-5;
    var fa2=instance_create(x,y+32,obj_tlStoneRockShooter);
    fa2.hspd=5;
    alarm[4] = 20;
}

