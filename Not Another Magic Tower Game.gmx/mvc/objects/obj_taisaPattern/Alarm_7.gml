num7 = 3;
for(var i=0;i<3;i+=1)
{
    createBullet(x,y,7,dir7+360/num7*i,spr_danmaku1,3,obj_taisaBullet7);
}
if(flag7)
{
    for(i=0;i<3;i+=1)
    {
        createBullet(x,y,7,dir7+180/num7+360/num7*i,spr_danmaku1,6,obj_taisaBullet7);
    }
}
dir7 += 4;
alarm[7] = 10;

