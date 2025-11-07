timer[0] += 1;
if(timer[0]<20)
{
    image_xscale -= 0.022;
    image_yscale -= 0.022;
}
else
{
    repeat(80)
    {
        var a=createDiaBullet(x,y,random_range(3,7),random(360),spr_danmaku9,choose(3*image_index+1,3*image_index+2));
        a.image_xscale = random_range(.75,1.5);
        a.image_yscale = a.image_xscale;
    }
    instance_destroy();
}
alarm[0] = 1;

