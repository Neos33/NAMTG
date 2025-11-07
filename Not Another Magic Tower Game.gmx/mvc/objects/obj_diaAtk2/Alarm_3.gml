if !done
{
    vspeed = 0;
    len = point_distance(x,y,xx,yy);
    dir = point_direction(xx,yy,x,y);
    lenspd = len/48;
    dd = sign(dir-90);
    done = 1;
}
x = xx + lengthdir_x(len,dir);
y = yy + lengthdir_y(len,dir);
if(len > 0)
{
    len -= lenspd;
    dir -= dd*6;
    alarm[3] = 1;
    image_angle = point_direction(xprevious,yprevious,x,y) - 90;
}
else
{
    curAngle = image_angle;
    alarm[4] = 1;
}

