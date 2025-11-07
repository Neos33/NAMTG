for(var i=1; i<10; i+=1)
{
    for(var j=0; j<num0; j+=1)
    {
        var a = createBullet(x,y,i,j*360/num0+3*i*count0+dir0,spr_danmaku1,color);
        a.friction = 0.15;
        a.spd = i;
        a.noDes = 1;
        a.image_xscale = 0.1;
        setScale(a,.5);
    }
}
count0 *= -1;
dir0 += 7;

