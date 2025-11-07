hspeed=-3;
alarm[3]=22;
image_index=1;
n=5;
 len=50; 
 dir+=180/n
repeat(n){
xx=x+lengthdir_x(len,dir);
yy=y+lengthdir_y(len,dir);
ss=instance_create(xx,yy,obj_smallGrayCherry);
dir+=360/n;
ss.direction=point_direction(x,y,xx,yy)+90;
ss.speed=6;
//ss.alarm[2]=50;
}

