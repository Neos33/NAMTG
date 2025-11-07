obj_diaCam.x = -32;
for(var i=0;i<=13;i+=1)
{
    a=createDiaBullet(i*64+32,-8,6,270,spr_danmaku12,2,obj_diaDanmaku2);
    a.image_xscale = 0.5;
    a.image_yscale = 0.5;
    a=createDiaBullet(i*64+32,-32,6,270,spr_danmaku12,2,obj_diaDanmaku2);
    a.image_xscale = 0.25;
    a.image_yscale = 0.25;
    a.life = 10;
}

