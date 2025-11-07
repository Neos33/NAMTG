if(i<5)
{
    x=random_range(200,600);
    y=random_range(200,300);
    n=8; len=200; dir=0;
    for(var p = 0; p < 16; p += 1)
    {
        dir +=  22.5;
        xx=x+lengthdir_x(len,dir);
        yy=y+lengthdir_y(len,dir);
        aa[p]=instance_create(xx,yy,obj_touhoubullet2);
    }
    for(var p = 0; p < 16; p += 1)
    {
        with(aa[p])
        {
            image_index=irandom(14);
            dir+=22.5;
        }
    }

    i+=1;
    alarm[5]=50;
    alarm[10]=20;
}
else
{
    alarm[10]=25;
    alarm[6]=35;
}

