repeat(360)
{
    var a = createBullet(x,y,1+random(9),random(360),spr_danmaku8,0,obj_taisaBullet4);
    a.friction = 0.13;
    a.alarm[1] = a.speed/a.friction;
    a.image_index = max(0,round(a.speed)-3);
}
alarm[6] = 120;

