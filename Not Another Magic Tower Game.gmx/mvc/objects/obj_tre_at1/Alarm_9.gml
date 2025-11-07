/*for (dir9=0;dir9<=360;dir9+=2.5;){
a=instance_create(400+lengthdir_y(r2_9,dir9)+lengthdir_x(lengthdir_x(r1_9,n9*dir9),dir9),
    304+lengthdir_x(r2_9,dir9)+lengthdir_x(lengthdir_y(r1_9,n9*dir9),dir9),obj_tre_bullet3);
a.r1=r1_9;
a.r2=r2_9;
a.dir=dir9;
}*/
num9 = 45;
for(i=0;i<num9;i+=1;)
{
    dir9 = 360/num9*i;
    xx9 = 400+lengthdir_y(r2_9,dir9+d9)+lengthdir_x(lengthdir_x(r1_9,num9*2*(dir9+d9)),dir9+d9);
    yy9 = 304+lengthdir_x(r2_9,dir9+d9)+lengthdir_x(lengthdir_y(r1_9,num9*2*(dir9+d9)),dir9+d9);
    var a = instance_create(x,y,obj_tre_bullet3);
        a.r1=r1_9;
        a.r2=r2_9;
        a.n=num9*2;
        a.no = 1;
        a.dir=dir9+d9;
        a.speed = point_distance(x,y,xx9,yy9)/10;
        a.direction = point_direction(x,y,xx9,yy9);
        a.image_index = d9*2;
        a.alarm[0] = 10;
}
d9 += 360/n9/4;
if(d9<360/n9)alarm[9] = 10;

/* */
/*  */
