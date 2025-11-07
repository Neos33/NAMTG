num9 = 12;
if(count9 == 0 && !flag9)
{
    dir9 = getDirection(player)+180/num9;
}
count9 += 1;
if(count9 == 30)
{
    count9 = 0;
}
for(var i=0; i<num9; i+=1)
{
    createBullet(x,y,12,dir9+360/num9*i+dir9_,spr_danmaku11,RED);
}
if(flag9)
{
    dir9_ = 2*sin(dd9);
    dd9 += pi/4;
}
alarm[9] = 2;

