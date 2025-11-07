
for(var i=0;i<360;i+=72)
{
    var a=instance_create(x,y,objBoss1Bullet4);
    a.direction=i+dir1+dir1_;
    a.speed = 8-3.6*(abs(sin(degtorad((i+dir1-90)*5/2))));
//    a.speed = dir/15+ 6;
//    a.alarm[0]=10;
    a.friction=cal_friction(8,100);
    a.par=id;
}
dir1+=8;
count+=1;
if count<9
{
    alarm[2]=2;
}
else
{
    alarm[2]=0;
    count=0;
}

