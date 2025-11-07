c2+=1;
dir5=random(360);
n5=18;
obj_diaCam.x=sign((c2 mod 2)-0.5)*40;
for(var i=0;i<n5;i+=1)
{
    var a=createDiaBullet(x,y,7,dir5+360/n5*i,spr_sdiamond,irandom(7));
    a.image_angle+=90;
}

