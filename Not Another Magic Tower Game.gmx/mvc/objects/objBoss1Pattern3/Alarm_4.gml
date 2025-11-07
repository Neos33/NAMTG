
for(var i=0;i<360;i+=60)
{
    var a=instance_create(x,y,objBoss1Bullet4);
    a.direction=i+dir3+dir3_;
    a.speed = 8-3*(abs(sin(degtorad((i+dir3-90)*3))));
//    a.speed = dir/15+ 6;
//    a.alarm[0]=10;
    a.friction=cal_friction(8,100);
    a.par=id;
}
dir3+=20/3;
count+=1;
if count<10
{
    alarm[4]=2;
}
else{
    alarm[4]=0;
    count=0;
}

