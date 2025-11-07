for(var i=0;i<4;i+=1)
{
    var a = createBullet(x,y,20,dir5+i*90,spr_danmaku6,choose(PURPLE,BLUE,CYAN),obj_taisaBullet3);
    a.friction = 0.6;
}
dir5 += 13;
alarm[5] = 2;

