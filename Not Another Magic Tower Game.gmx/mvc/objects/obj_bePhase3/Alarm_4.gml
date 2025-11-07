if(phase == 2)
{

        p = instance_create(x,y,obj_beBossPhase3Bullet2);
        p.direction = -p2Count * 36;
        p.ind = p2Count;
        p.clear = true;

    p2Count += 1;
    if(p2Count == 10)
    {
        p2Count = 0;
        alarm[2] = 135;
        alarm[0] = 30;
    }
    else
    {
        alarm[4] = 3;
    }
}
else
{
    alarm[4] = 0;
}



