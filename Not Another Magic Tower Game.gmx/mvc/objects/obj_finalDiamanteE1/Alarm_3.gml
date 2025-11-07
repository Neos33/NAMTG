for(var i=6;i<30;i+=1)
{
    for(var j=0;j<4;j+=1)
    {
        var rr = (i-5)*11;
        var xx = x+lengthdir_x(rr,j*45+image_angle);
        var yy = y+lengthdir_y(rr,j*45+image_angle);
        var a=instance_create(xx,yy,obj_finalDiamanteB1);
        a.image_speed=image_speed;
        a.image_index=image_index;
        a.alarm[0]=2*(i);
        a.image_alpha=0;
        a.par=id;
        a.len=rr;
        a.dir=j*45+image_angle-25;
        a.dirspd=2;
        a.st1=1;
        a.image_xscale=(46-i)/46;
        a.image_yscale=a.image_xscale*3;
    }
}


