rnd=random(360);
rnd1=random(360);
rnd2=random(360);
rnd3=random(360);

a=instance_create(x,y,objBoss1Pattern3);
a.direction=point_direction(x,y,250,160);
a.speed=point_distance(x,y,250,160)/22;
a.alarm[11]=23;
a.dire=180;
a.dir=90;
a.dir_=rnd;
a.dir1=0;
a.dir1_=rnd1;
a.dir2=0;
a.dir2_=rnd2;
a.dir3=0;
a.dir3_=rnd3;

a=instance_create(x,y,objBoss1Pattern3);
a.direction=point_direction(x,y,550,160);
a.speed=point_distance(x,y,550,160)/22;
a.alarm[11]=23;
a.dire=0;
a.dir=90;
a.dir_=180-rnd;
a.dir1=0;
a.dir1_=180-rnd1;
a.dir2=0;
a.dir2_=180-rnd2;
a.dir3=0;
a.dir3_=180-rnd3;

alarm[0]=0;
alarm[1]=0;

