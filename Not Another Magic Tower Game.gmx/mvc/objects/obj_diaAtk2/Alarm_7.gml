for(var i=0;i<n7;i+=1)
{
    var a=createDiaBullet(x,y,3,dir7+360/n7*i,spr_danmaku2,i+2,obj_diaDanmaku2);
    a.life=50;
    a.friction = -0.06;
}
dir7 += 33;
alarm[7] = 5;

