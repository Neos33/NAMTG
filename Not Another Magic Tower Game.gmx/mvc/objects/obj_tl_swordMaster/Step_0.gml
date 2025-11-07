if(status == 1)
{
    if(point_distance(x,y,400,80) < 15)
    {
        hspeed = 0;
        vspeed = 0;
        x = 400;
        y = 80;
        status = 0;
        instance_create(x,y, obj_swordMasterThrower);
        sound_fix(sndBurst1);
    }
}
else if(status == 2)
{
    if(point_distance(x,y,tx, ty) < 15)
    {
        hspeed = 0;
        vspeed = 0;
        x = tx;
        y = ty;
        alarm[3] = 70;
        status = 0;
    }
}
else if(status == 3)
{
    if(countdown > 0)
    {
        countdown -= 1;
    }
    else
    {
        status = 0;
        event_user(evtInd);
    }
}

