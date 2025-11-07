for(i=0;i<4;i+=1)
{
    xx4 = 400+lengthdir_x(rad4,dir6+90*i);
    yy4 = 400+lengthdir_y(rad4,dir6+90*i);
    var a=instance_create(xx4,yy4,obj_tre_bullet);
        a.sprite_index=spr_cboom;
        a.image_index=6*i+rn4;
        a.lenspd=-rad4/(3000/144*6)/2.5;
        a.no=1;
        a.angspd=2;
        a.ang=dir4+90*i;
        a.len=rad4;
        a.spin=1;
        a.cc=1;
        a.alarm[2]=1;
}

