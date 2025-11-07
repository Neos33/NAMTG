event_inherited();

//the ability of summoning lasers
image_alpha=0;
//parameter start
maxnum=15;
yfac=10;
xmin=1.0;
xmax=1.2;
n0=20;
flag=1;
ttime=50;
//parameter end
c_start=c_yellow;
c_middle=merge_color(c_white,c_start,0.8);
alarm[0]=1;
alarm[1]=ttime;
alarm[2]=1;
alarm[3]=50;
event_inherited();
image_speed = 1/8;
circle = instance_create(x,y,obj_tlMagicCircle);
circle.target = id;
image_xscale = 0.8;
image_yscale = 0.8;


percent = 0;
dir = 0;
n = 0;
angle = 0;


