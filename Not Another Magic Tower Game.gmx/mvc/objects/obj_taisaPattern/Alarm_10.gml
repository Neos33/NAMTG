dir10 = getDirection(player);
num10 = 4;
for(var i=0; i<num10; i+=1)
{
    var a = createBullet(x,y,5,dir10+360/num10*i,spr_danmaku12,1+i mod 2,obj_taisaBullet8);
    a.depth = -5;
    a.dir = 360/num10*i;
}
alarm[10] = 120;

