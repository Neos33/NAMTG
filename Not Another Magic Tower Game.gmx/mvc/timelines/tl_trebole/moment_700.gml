with(obj_tre_bullet3)instance_destroy()
for(i=0;i<4;i+=1){
    xx = 400 + lengthdir_x(100,i*90+45);
    yy = 304 + lengthdir_y(100,i*90+45);
    a=instance_create(xx,yy,obj_tre_wb);
    a.image_index=14+i;
    a.len=100;
    a.ang=i*90+45;
    a.rot=1;
    with(a){
        rnd=random(360);
        for(i=0;i<20;i+=1){
            a=instance_create(x,y,obj_tre_bullet3);
            a.speed=6;
            a.direction=rnd+18*i;
            a.image_index=14+irandom(3);
        }
    }
    a=instance_create(xx,yy,obj_tre_wb);
    a.image_index=14+i;
    a.rot=-1;
    a.len=100;
    a.ang=i*90+45;
}

