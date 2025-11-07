dir = random(360);
dir2 = random(360);
for(var j=0;j<2;j+=1)
{
    for(var i=0;i<=24;i+=1)
    {
        var a=instance_create(x,y,objBoss1Bullet1);
        a.sprite_index=j*(sprBulletGreen)+(!j)*(sprBulletBlue);
        a.speed=6+4*j;
        a.direction=15*i+dir;
        a.dirspd=2;
        a.spd=a.speed;
    }
}
for(var j=0;j<2;j+=1)
{
    for(var i=0;i<=24;i+=1)
    {
        var a=instance_create(x,y,objBoss1Bullet1);
        a.sprite_index=j*(sprBulletGreen)+(!j)*(sprBulletBlue);
        a.speed=6+4*j;
        a.direction=15*i+dir2;
        a.dirspd=-2;
        a.spd=a.speed;
    }
}

