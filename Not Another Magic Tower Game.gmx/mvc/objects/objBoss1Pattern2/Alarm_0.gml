repeat(3)
{
    var a=instance_create(x,y,objBoss1Bullet2);
        a.speed=8;
        a.direction=dir;
        a.friction=cal_friction(8,30)
        a.par=id;
    dir+=120;
}
dir+=21.8;
count+=1;
if count<14
{
    alarm[0]=2;
}
else{
    image_alpha=1;
    fadeOut=1;
    alarm[0]=0;
}

