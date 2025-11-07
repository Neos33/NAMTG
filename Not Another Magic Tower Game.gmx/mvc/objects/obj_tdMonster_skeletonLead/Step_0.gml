if(windCD == 0 && !reset)
{
    if(abs(player.y - y) < 16)
    {   
        var b = instance_create(x+4,y,obj_tdSkeletonLeadBullet);
        b.atk = atk;
        windCD = 80;
        alarm[4] = 1;
    }
}

