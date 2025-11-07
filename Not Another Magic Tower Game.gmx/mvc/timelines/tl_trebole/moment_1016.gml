with(obj_tre_bullet3){
    if active {alarm[4] = 1;image_alpha=0.5;}
}
with(obj_tre_bullet){
    dir = 270;
    n = 7;
    for(j=1;j<=5;j+=1;){ //锟斤拷锟街る部锟街わ拷for锟角★拷锟斤拷锟斤拷锟皆わ拷锟斤拷锟矫わ拷锟斤拷2*5锟斤拷锟矫トでわ拷搿?
        a=instance_create(x,y,obj_tre_bullet2);
        v=10
        dd = cos(degtorad(18))
        ee = cos(degtorad(36))
        ff = cos(degtorad(54))
        k = (1+sqrt(5))*ff*v/(ee+(1+sqrt(5))*ff*dd) //锟斤拷芒锟角の黄斤拷锟斤拷胜锟斤拷锟斤拷盲锟斤拷锟揭伙拷x锟斤拷锟絃锟斤拷锟斤拷锟?
        a.speed=10
        a.direction=dir
        a.image_index=image_index;
        a.fade_o_change=1;
        for(i=1;i<=n;i+=1;){
            a=instance_create(x,y,obj_tre_bullet2) //锟睫わ拷锟斤拷锟絩計锟截わ拷趣锟斤拷锟?
            a.speed=abs(sqrt(sqr(v)+sqr(k*i/n)-2*v*(k*i/n)*dd))//锟斤拷锟揭讹拷锟斤拷
            vv=a.speed
            a.image_index=image_index;
            a.sprite_index=sprite_index;
            a.fade_o_change=1;
            a.direction=dir+radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))))//锟斤拷锟揭讹拷锟斤拷锟絘rccos()锟斤拷()锟节わ拷锟斤拷欷匡拷锟斤拷藢锟斤拷辘癸拷锟絚os锟轿角度わ拷radian锟絞位锟角筹拷锟斤拷
            b=instance_create(x,y,obj_tre_bullet2) //锟紸锟斤拷锟狡時計锟截わ拷锟?
            b.speed=a.speed
            b.direction=dir-radtodeg(arccos((sqr(v)+sqr(vv)-sqr(k*i/n))/(2*v*(vv))));
            b.image_index=image_index;
            b.sprite_index=sprite_index;
            b.fade_o_change=1;
            if(i==n-1){
                dir += 72
            }
        }
    }
    instance_destroy();
}
alarm[5]=0;

