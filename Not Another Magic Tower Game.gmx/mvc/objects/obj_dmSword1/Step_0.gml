if(!hit)
{
    vspeed += 0.1;
    if(bbox_top > top)
    {
        vspeed += 0.1;
    }
}
else if(!disappear)
{
    disappear = true;
    alarm[3] = 20;
}

