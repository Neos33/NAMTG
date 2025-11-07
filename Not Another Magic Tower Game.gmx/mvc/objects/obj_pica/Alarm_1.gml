image_angle = point_direction(xp,yp,x,y) - 90
xp = x;
yp = y;
x = 400 + lengthdir_x(len,dir);
y = 100 + lengthdir_y(len/8,dir);
len = 350*sin(t*pi/480);
dir += 7;
alarm[1]=1;
t+=1;
if t=240
{
    spd*=-1;
}
if t=480
{
    image_angle = 0;
    if(instance_number(obj_pica)>1)instance_destroy();
    x=400;
    y=100;
    alarm[1] = 0;
}


