var R=150;
var r=70;
var frame=15;

for(var i=0;i<5;i+=1)
{
    var a=instance_create(x,y,objBoss1Bullet4);
        a.speed=(R-(R-r)/(180/5)*abs((dir mod (360/5))-(180/5)))/frame;
        a.direction=dir_+dir+72*i;
        a.friction=a.speed/20;
        a.par=id;
}
dir+=8;
count+=1;
if count<9
{
    alarm[0]=2;
}
else
{
    alarm[0]=0;
    count=0;
}

