with(obj_lightTargetRotater)
{
    for(i =0;i<20;i+=1)
    {
        p = instance_create(x,y,obj_action2CherryExplode);
        p.speed = 5;
        p.direction = 18 * i;
    }
    instance_destroy();
}

with(obj_action2Cherry)
{
    speed = 5;
    direction = point_direction(400,240,x,y);
    instance_change(obj_action2CherryExplode, true);
}

shoot = false;
amount = 7;
if(total > 0)
{
    instance_destroy();
}
else
{
    total += 1;
    p = instance_create(400,240,obj_lightTargetRotater);
    p.targetX = 400;
    p.targetY = 240;
    p.sTime = 50;
    p.alarm[0] = 70;
    alarm[0] = 50;
}

