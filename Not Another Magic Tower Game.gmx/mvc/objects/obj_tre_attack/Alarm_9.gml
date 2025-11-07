max_num=60;
n=6;
R=150;
r=70;
dir0=0;
frame=30;
for(var k=0;k<3;k+=1)
{
    for(var i=0;i<max_num;i+=1)
    {
      a=instance_create(x,y,obj_tre_bullet3);
      a.direction=i*360/max_num+dir0;
      a.speed=r/frame*0.8;
      a.spd=(R-(R-r)/(180/n)*abs(((i*360/max_num) mod (360/n))-(180/n)))/frame*(1.25+0.25*k);
      count+=1;
      a.image_index=count;
      //a.friction=a.speed/35;
    }
}

