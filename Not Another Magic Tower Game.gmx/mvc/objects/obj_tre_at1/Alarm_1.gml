xx = x + lengthdir_x(rr,dir1);
yy = y + 250 + lengthdir_y(rr,dir1);
xx2 = x + lengthdir_x(rr,dir1+177);
yy2 = y - 250 + lengthdir_y(rr,dir1+177);
var a=instance_create(xx,yy,obj_tre_bullet);
a.image_alpha=0;
a.fade_i_change=1;
a.num=2;
a.count=c1;
a.image_index=5;
a.sp=i;

a=instance_create(xx2,yy2,obj_tre_bullet);
a.image_alpha=0;
a.fade_i_change=1;
a.num=2;
a.count=c1;
a.sp=i;

c1+=1;
if(dir1>51)
{
    dir1-=6;
    alarm[1]=3000/144/15*2;
}

