for(i=0;i<2;i+=1)
{
    a=createDiaBullet(x,y,3,180*i+dir3,spr_danmaku11,5+i+2*change);
    a.friction = -0.05;
    dir3 += ddir3;
    ddir3 += dddir3;
}
alarm[3] = 2;

