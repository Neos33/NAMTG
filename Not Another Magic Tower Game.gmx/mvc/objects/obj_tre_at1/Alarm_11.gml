rnd11=0//irandom(360);
for(i=0;i<2;i+=1)
{
    for(j=-10;j<=10;j+=1)
    {
        var a=instance_create(x,y,obj_tre_bullet3);
            a.active=1;
            a.speed = j*1.5;
            a.direction = i*90+45;
            a.image_index = 8*i+rnd11;
            a.dirspd = -1.8;
            a.no = 1;
            count11 += 1;
            a.num = count11;
            a.xx = 400+lengthdir_x(100,9*a.num+rnd11);
            a.yy = 304+lengthdir_y(100,9*a.num+rnd11);
            a.len = 100;
    }
}
for(i=0;i<2;i+=1)
{
    for(var j=-10;j<=10;j+=1)
    {
        var a=instance_create(x,y,obj_tre_bullet3);
            a.speed = j*1.5;
            a.active=1;
            a.direction = i*90+45;
            a.image_index = 8*i+rnd11+4;
            a.dirspd = 1.8;
            a.no = 1;
            count11 += 1;
            a.num = count11;
            a.xx = 400+lengthdir_x(108,9*a.num+rnd11+4.5);
            a.yy = 304+lengthdir_y(108,9*a.num+rnd11+4.5);
            a.len = 108;
    }
}

