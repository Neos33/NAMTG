if(status == 11)
{
    if(!path2)
    {
        path2 = pathHappy2;
    }
    p1Count += 1;
    status = 12;
    path_start(path2, 15,0,0);
}
else if(status == 12)
{
    if(p1Count < 3)
    {
        alarm[3] = 1;
    }
    else
    {
        status = 21;
        alarm[4] = 20;
    }
}
/*else if(status == 21)
{
    path = pathHappy2;
    path_scale(path, 0.3, 0.3);
    p2Count += 1;
    status = 22;
    path_scale = 0.3;
    path_start(pathHappy2, 10,0,0);
}
else if(status == 22)
{
    path = pathHappy2;
    path_scale(path, 0.3, 0.3);
    if(p2Count < 3)
    {
        status = 21;
        alarm[4] = 1;
    }
    else
    {
        status = 3;
        alarm[5] = 50;
    }
}

/* */
/*  */
