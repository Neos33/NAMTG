var ang = random(360);
var rnd = choose(0,1);
for(var i=0;i<4;i+=1)
{
    var a=instance_create(x,y,obj_finalBossBullet);
    a.speed=4;
    a.direction=ang+i*90;
    a.bounce=1;
    a.sprite_index=spr_finalTrebole16;
    a.image_single=rnd+2*i;
    for(var j=0;j<4;j+=1)
    {
        var b=instance_create(x,y,obj_finalBossBullet2);
        b.parent=a;
        b.active=1;
        b.image_index=a.image_index;
        b.lenspd=0.5;
        b.dir=j*90;
        b.dirspd=3;
        b.alarm[0]=100;
    }
}

