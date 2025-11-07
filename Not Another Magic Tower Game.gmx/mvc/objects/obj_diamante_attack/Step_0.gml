if at1
{
    x1 -= 5;
    c1 += 1;
    if(x1 > 0 && c1 mod 2 == 0)
    {
        y1 = 64 * sin(pi / 160 * x1) + 304;
        var a = createDiaBullet(x1, y1, 0, 0, spr_danmaku12, 1 + (x1 / 5) mod 7, obj_diaDanmaku2);
            a . dir = x1 / 5;
            a . image_xscale = 0.3;
            a . image_yscale = a.image_xscale;
            a . add = 1;
            a . cc = 1;
        y1 = -64 * sin(pi / 160 * x1) + 304;
            a = createDiaBullet(x1, y1, 0, 0, spr_danmaku12, 1 + (x1 / 5) mod 7, obj_diaDanmaku2);
            a . image_xscale = 0.3;
            a . dir = x1 / 5;
            a . image_yscale = a.image_xscale;
            a . add = 1;
            a . cc = 2;
    }
}

if at2
{
    y2 += 3.8;
    c2 += 1;
    if(y2 < 608 && c2 mod 2 == 0)
    {
        x2 = 48*sin(pi/121.6*y2) + 400;
        var a = createDiaBullet(x2,y2,0,0,spr_danmaku12,1+(y2/3.8) mod 7,obj_diaDanmaku2);
        a.dir=y2/3.8;
        a.image_xscale=0.3;
        a.image_yscale=a.image_xscale;
        a.add=1;
        a.cc=3;
        x2 = -48*sin(pi/121.6*y2) + 400;
        a=createDiaBullet(x2,y2,0,0,spr_danmaku12,1+(y2/3.8) mod 7,obj_diaDanmaku2);
        a.image_xscale=0.3;
        a.dir=y2/3.8;
        a.image_yscale=a.image_xscale;
        a.add=1;
        a.cc=4;
    }
}

if(at3)
{
    xx = choose(0,800);
    yy = choose(0,608);
    createDiaBullet(xx,yy,random_range(0.5,1),point_direction(xx,yy,400,304)+random_range(-50,50),spr_danmaku4,choose(1,2,3,6));
}
if(at4)
{
    repeat(4)
    {
        xx = choose(0,800);
        yy = choose(0,608);
        createDiaBullet(xx,yy,random_range(2,10),point_direction(xx,yy,400,304)+random_range(-50,50),spr_danmaku4,choose(1,2,3,6));
    }
}

if(!player_is_alive())
{
    timeline_running = false;
}

