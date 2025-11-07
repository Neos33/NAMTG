if(abs(x - targetX2) > 15)
{
    xStep = 15 * sign(targetX2 - x);
    x += xStep;
    alarm[5] = 1;
}
else
{
    x = targetX2;
    dash = false;
    obj_tl_draculaRealBody.tranAlpha = 1;
    obj_tl_draculaRealBody.alarm[1] = 1;
}

