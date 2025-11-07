if(dashCount > 0)
{
    type = irandom_range(0,3);
    var sx, sy;
    if(type == 0)
    {
        sx = 0; sy = random_range(0,608);
    }
    else if(type == 1)
    {
        sx = random_range(0,800); sy = 0;
    }
    else if(type == 2)
    {
        sx = 800; sy = random_range(0,608);
    }
    else if(type == 3)
    {
        sx = random_range(0,800); sy = 608;
    }
    var line = instance_create(sx,sy,obj_asAttackLine);
    ds_queue_enqueue(dashLine,line);
    dashCount -= 1;
    alarm[7] = dashGap;
    dashGap -= 3;
}
else
{
    if(player_is_alive())
    {
        forAch = false;
        x = 400;
        y = -32;
        alarm[10] = 50;
    }
}

