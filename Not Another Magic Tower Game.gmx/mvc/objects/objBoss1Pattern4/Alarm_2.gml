var dir=random(360);
var ind=irandom(6);
for(var i=1;i<=18+4*global.phase;i+=1;)
{
    var a=instance_create(x,y,objBoss1Bullet5_);
    a.speed=9;
    a.direction=dir;
    dir+=360/(18+4*global.phase);
    a.image_index=ind;
    a.dirspd=2;
}
ind=irandom(6);
for(var i=1;i<=18+4*global.phase;i+=1;)
{
    var a=instance_create(x,y,objBoss1Bullet5_);
    a.speed=9;
    a.direction=dir;
    dir+=360/(18+4*global.phase);
    a.image_index=ind;
    a.dirspd=-2;
}
instance_destroy();

