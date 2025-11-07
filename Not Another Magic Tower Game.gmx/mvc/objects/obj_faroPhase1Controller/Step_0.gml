if(cCount < count && t >= RangeClamp(time[cCount] - 50, 0, 10000))
{
    c = instance_create(tx[cCount], ty[cCount], obj_faroStartCircle);
    c.num = num[cCount];
    c.type = type[cCount];
    c.alarm[0] = time[cCount] - t;
    c.alarm[1] = time[cCount] - t;
    cCount += 1;
}

if(bCount < count && t >= time[bCount])
{
    with(obj_faroBlinkBlack)
    {
        event_user(0);
    }
    blink = instance_create(0,0,obj_faroWhite1);
    blink.image_alpha = 1;
    blink.stepAlpha = 0.1;
    bCount += 1;
}

if(pCount < count && t >= RangeClamp(time[pCount] - 30, 0, 10000))
{
    p = instance_create(tx[pCount], ty[pCount], obj_faroStartCircleApproacher);
    p.time = time[pCount] - t;
    pCount += 1;
}

if(pc < pathCount && t >= pTime[pc])
{
    pFollower = instance_create(400,304,obj_faroStartPathFollower);
    pFollower.path = path[pc];
    pFollower.time = pInv[pc];
    with(pFollower)
    {
        event_user(0);
    }
    pc += 1;
}

t += 1;

