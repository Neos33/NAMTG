for(var i=1;i<=n0;i+=1)
{
    var dd = 360/n0*i+dir;
    var xx = 400 + lengthdir_x(350,dd);
    var yy = 304 + lengthdir_y(350,dd);
    var a=instance_create(xx,yy,obj_finalCorazoneB1);
    a.speed=4.5; 
    a.direction=(dd+90)+(flag==-1)*180;
    a.dirspd=flag*360*4.5/pi/350;
    a.alarm[0]=180/abs(a.dirspd);
    a.image_xscale=xmin+(xmax-xmin)*percent;
    a.image_yscale=a.image_xscale/yfac;
    a.image_blend=merge_color(c_start,c_middle,percent);
    dir+=18;
}


