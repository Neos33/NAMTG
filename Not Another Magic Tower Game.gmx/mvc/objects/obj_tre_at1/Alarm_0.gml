xx = x+lengthdir_x(r,dir);
yy = y+lengthdir_y(r,dir);
xx2 = x+lengthdir_x(r,dir+180);
yy2 = y+lengthdir_y(r,dir+180);

for(i=-2;i<=2;i+=1)
{
    var a=instance_create(xx,yy,obj_tre_bullet);
        a.speed=6;
        a.direction=point_direction(xx,yy,400,304)+90+45*i;
    if(c0 div 3) mod 2 == 1
    {
        a.image_index = 5;
    }
}

for(i=-2;i<=2;i+=1)
{
    a=instance_create(xx2,yy2,obj_tre_bullet);
    a.speed=6;
    a.direction=point_direction(xx2,yy2,400,304)+90+45*i;
    if(c0 div 3) mod 2 == 1
    {
        a.image_index = 5;
    }
}

a=instance_create(xx,yy,obj_tre_bullet);
a.nn=c0;
a.num=1;
if(c0 div 6) mod 2 == 1
{
    a.image_index = 5;
}

a=instance_create(xx2,yy2,obj_tre_bullet);
a.nn=c0;
a.num=1;
if(c0 div 6) mod 2 == 1
{
    a.image_index = 5;
}

c0+=1;
if(dir<177)
{
    dir+=3;
    alarm[0]=2.67/4;
}

