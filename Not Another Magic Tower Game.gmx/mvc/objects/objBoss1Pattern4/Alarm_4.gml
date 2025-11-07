for(var i=1; i<=(3+global.phase); i+=1)
{
    var dir=d+5-5*i;
    for(var j=1; j<=20; j+=1)
    {
        var a=instance_create(x,y,objBoss1Bullet5);
        a.speed=7-0.5*i
        a.direction=dir;
        dir+=360/20
        a.image_index=(5+i) mod 7;
    }
}
instance_destroy();

