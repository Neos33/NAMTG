with(obj_tre_bullet){
    a=instance_create(x,y,obj_tre_bullet2);
    a.r1=r1;
    a.r2=r2;
    a.dir6=dir6;
    //a.dirspd6=0.1;
    a.asd=1/6/fpb;
    a.n=n;
    a.sprite_index=sprite_index;
    a.alarm[6]=1;
    a.image_index=image_index;
    a.dmax=3;
    a.no=1;
    a.blur=1;
    instance_destroy()
    /*len = point_distance(400,304,x,y);
    ang = point_direction(400,304,x,y);
    spin = 1;
    angspd = 0.4;*/
}
alarm[11] = 1;

/* */
/*  */
