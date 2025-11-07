for(var i=0;i<4;i+=1)
{
    var a = instance_create(400,304,obj_taisaBullet2);
    a.speed = 5;
    a.direction = dir4+90*i;
    a.zzz = 2*((i mod 2) - 0.5);
    a.image_index = 1+2*(i mod 2);
    a.count4 = count4;
}
if(count4 == -1)
{
    dir4 += 6.6;
    alarm[4]=choose(1,2,2);
}
else
{
    dir4 += 11;
    alarm[4]=3;
}

