for(var i = 0; i < 2; i += 1)
{
    var a=instance_create(x,y,objBoss1Bullet3);
    a.direction=dir+180*i;
    a.speed=7;
    dir+=15;
}
for(var i = 0; i < 2; i += 1)
{
    var a=instance_create(x,y,objBoss1Bullet3);
    a.direction=dir2+180*i;
    a.speed=8;
    a.sprite_index=sprBulletGreen;
    dir2-=25;
}
for(var i = 0; i < 2; i += 1)
{
    var a=instance_create(x,y,objBoss1Bullet3);
    a.direction=dir4+180*i;
    a.sprite_index=sprBulletRed;
    a.speed=6;
    dir4+=55;
}

var a=instance_create(x,y,objBoss1SaveBOOM);
a.direction=random(360);
a.speed=5;
alarm[1]=10;

