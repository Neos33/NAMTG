
v=v2;
ddd = degtorad((180-(360/4))/2)
k=2*v*cos(ddd)

for(i=1;i<=n2;i+=1;)
{
    var a=instance_create(x,y,obj_tre_bullet);
        a.speed=abs(sqrt(sqr(v)+sqr(k*i/n2)-2*v*(k*i/n2)*cos(ddd)))
        a.image_index=choose(2,3);
        a.alarm[0]=8;
        a.za=1;
    vv=a.speed;
        a.direction=dir2+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n2))/(2*v*(vv))));
    if(i==n2)
    {
        dir2 += 360/4;
    }
}

