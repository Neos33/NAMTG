/*a=instance_create(x,y,objBoss1Bullet3)
a.direction=dir;
a.speed=5;
dir+=15;*/
for(var i = 0; i < 2; i += 1)
{
    var a=instance_create(x,y,objBoss1Bullet3);
    a.direction=dir2+180*i;
    a.speed=5;
}
dir2+=25;
for(var i = 0; i < 2; i += 1)
{
    var a=instance_create(x,y,objBoss1Bullet3);
    a.direction=dir3+180*i;
    a.speed=5;
}
dir3+=35;
alarm[0]=7;

/* */
/*  */
