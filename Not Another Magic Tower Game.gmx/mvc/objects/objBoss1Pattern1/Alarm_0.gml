repeat(2)
{
    var a=instance_create(x,y,objBoss1Bullet2);
        a.speed=8;
        a.direction=dir;
        a.friction=cal_friction(8,30)
        a.par=id;
    dir+=180;
}
dir+=10;
count+=1;
if count<18
{
    alarm[0]=1;
}
else{
    alarm[0]=0;
}

