repeat(2)
{
    createBullet(x+random_range(-128,128),y+random_range(-128,128),random_range(3,5),random(360),choose(spr_danmaku3,spr_danmaku4),irandom_range(1,6));
}
alarm[1] = 1;

