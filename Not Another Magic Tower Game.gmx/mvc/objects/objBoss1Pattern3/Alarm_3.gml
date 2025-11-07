
for(var i=0; i<360; i+=72)
{
    var a=instance_create(x,y,objBoss1Bullet4);
    a.direction=i+dir2+dir2_;
    a.speed = 8-1*(abs(sin(degtorad((i+dir2-90)*5/2))));
//    a.speed = dir/15+ 6;
//    a.alarm[0]=10;
    a.friction=cal_friction(8,100);
    a.par=id;
}
dir2+=8;
count+=1;
if count<9
{
    alarm[3]=2;
}
else
{
    alarm[3]=0;
    count=0;
}

