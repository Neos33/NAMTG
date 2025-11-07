if(mode == 0)
{
    instance_create(400,304,obj_faroStartDashPoint);
    dCount += 1;
    if(dCount < dashCount)
    {
        alarm[2] = 39;
    }
    else
    {
        with(obj_faroMagicCircle)
        {
            event_user(1);
        }
    }
}
else
{
    if(!obj_osuController.fanalEnd)
    {
        angle = random_range(0,360);
        circle = instance_create(400 + 200 * cos(degtorad(angle + 72 * i)),
                                 304 - 200 * sin(degtorad(angle + 72 * i)),
                                 obj_faroFinalCircle1);
        alarm[2] = 10;
    }
}

