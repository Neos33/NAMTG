if(ind < count)
{
    if(time mod 2 == 0)
    {
        ind += 1;
        angle += 144;
        x = 400 + 200 * cos(degtorad(angle));
        y = 304 - 200 * sin(degtorad(angle));
        lastNode.targetX = x;
        lastNode.targetY = y;
        if(ind < count)
        {
            lastNode = instance_create(x,y,obj_faroStartDashNode);
            lastNode.num = rng;
        }
    }
}
else if(!endDash)
{
    endDash = true;
    alarm[0] = 1;
}
time += 1;
/*if(point_distance(x,y,targetX,targetY) <= spd)
{
    x = targetX;
    y = targetY;
    speed = 0;
    angle += 144;
    event_user(0);
    lastNode.targetX = x;
    lastNode.targetY = y;
    if(ind > 1)
    {
        lastNode = instance_create(x,y,obj_faroStartDashNode);
        lastNode.num = rng;
        /*nextNode = instance_create(x,y,obj_faroStartDashNode);
        if(ind <= count)
        {
            nextNode.target = self;
        }
        nextNode.num = rng;
        lastNode.target = nextNode;
        lastNode = nextNode;*/
/*    }  
}
else if(!endDash)
{
    if(ind > count)
    {
        endDash = true;
        alarm[0] = 1;
    }
    else
    {
        move_towards_point(targetX,targetY,spd);
    }
}

lastNode.targetX = x;
lastNode.targetY = y;

/* */
/*  */
