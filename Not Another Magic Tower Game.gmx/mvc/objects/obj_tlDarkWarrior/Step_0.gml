if(tIndex <= 3)
{
    if(point_distance(x,y, targetX[tIndex], targetY[tIndex]) < spd)
    {
        speed = 0;
        x = targetX[tIndex];
        y = targetY[tIndex];
        tIndex += 1;
        with(instance_create(x,y,obj_tlDWBomb))
        {
            alarm[0] = 0;
            alarm[1] = 20;
            alarm[11] = 0;
            p = 9;
        }
        for(var i=0; i<8;i+=1)
        {
            var pp = instance_create(x,y,obj_tlDWBullet);
            pp.direction = i * 45;
        }
        if(count <= 3)
        {
            event_user(0);
        }
    }
    else
    {
        move_towards_point(targetX[tIndex], targetY[tIndex], spd);
    }
}
else
{
    if(!stop)
    {
        alarm[3] = 1;
        alarm[4] = 30;
        with(obj_tlDWBomb)
        {
            alarm[11] = 1;
        }
        stop = true;
    }
}

