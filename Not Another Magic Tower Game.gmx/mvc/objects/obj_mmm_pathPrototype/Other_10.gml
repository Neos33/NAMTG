for(i=0;i<orbitCount;i+=1)
{
    px = x + dis[i] * cos(degtorad(angle[i]));
    py = y - dis[i] * sin(degtorad(angle[i]));
    p[i] = instance_create(x,y, obj_mmm_pathPoint);
    p[i].angle = angle[i];
    p[i].dis = dis[i];
    p[i].centerX = x;
    p[i].centerY = y;
    p[i].parent = id;
    if(mType[i] == 1)
    {
        pp[i] = instance_create(px, py, obj_mmm_monster1);       
    }
    else if(mType[i] == 2)
    {
        pp[i] = instance_create(px, py, obj_mmm_monster2);
        pp[i].image_angle = mAngle[i];
    }
    else if(mType[i] == 3)
    {
        pp[i] = instance_create(px, py, obj_mmm_monster3);
    }
    else
    {
        pp[i] = noone;
    }
    if(pp)
    {
        pp[i].parent = p[i];
    }
}

