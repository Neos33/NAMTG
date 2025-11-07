if(totalShot > 0)
{
    for(var i = 60; i <= 800; i += 80)
    {
        instance_create(i, 0, obj_asShock);
    }
    totalShot-=1;
    event_user(1);
    alarm[0] = gap;
}
else
{
    event_user(0);
}

