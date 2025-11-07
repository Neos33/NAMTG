do
{
    xx = random(800);
    yy = random(608);
}
until(place_meeting(xx,yy,block)==0);

a=instance_create(xx,yy,obj_tre_bullet);
a.image_index=7;
a.xx=_objX[count10];
a.yy=_objY[count10]+70;
a.alarm[3]=1;
a.image_alpha=0;
a.image_xscale=0;
a.image_yscale=0;
a.no=1;
count10+=1;
if(count10!=132)alarm[10]=4;

