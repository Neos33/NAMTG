hspeed=3.05;
alarm[4]=22;
image_index=0;
/*repeat(5)
{
aa=instance_create(x,y,obj_smallGrayCherry);
aa.direction=irandom(360);
aa.speed=7;
}*/

n=3;
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

/* */
/*  */
