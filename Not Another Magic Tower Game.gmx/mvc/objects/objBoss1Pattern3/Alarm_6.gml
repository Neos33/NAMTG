var a=instance_create(x,y,objBoss1Bullet3);
a.direction=ddir1;
a.speed=5;
ddir1+=15;
a=instance_create(x,y,objBoss1Bullet3)
a.direction=ddir2;
a.speed=7;
ddir2-=15;
a=instance_create(x,y,objBoss1Bullet3)
a.direction=random(360);
a.speed=8;
a.sprite_index=sprBulletRed;
ddir2-=15;
repeat(global.phase)
{
    a=instance_create(x,y,objBoss1Bullet3)
    a.direction=ddir3;
    a.speed=5;
    ddir3+=118;
}
alarm[6]=5;

