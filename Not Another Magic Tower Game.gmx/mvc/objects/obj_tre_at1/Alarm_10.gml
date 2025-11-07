rnd10=irandom(24);
for(i=0;i<3;i+=1)
{
    for(var j=-15;j<=15;j+=1)
    {
        var a=instance_create(x,y,obj_tre_bullet3);
            a.speed = j;
            a.direction = i*120+30;
            a.image_index = 8*i+rnd10;
            a.dirspd = 1.5;
            a.no = 1;
            a.i = i;
            a.j = j+15;
            a.tdir = j*36 + i*120;
            a.num = count10;
            count10 += 1;
            a.dir = 2*pi/93*a.num;
            a.xx = 400 + 120*(16*power(sin(a.dir),3))/17;
            a.yy = 304 + 120*(13*cos(a.dir)-5*cos(2*a.dir)-2*cos(3*a.dir)-cos(4*a.dir))/17;
    }
}

