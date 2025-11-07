
rnd=irandom(24);
for(dir10=0;dir10<360;dir10+=72){
    a=instance_create(x,y,obj_tre_bullet3);
    a.speed=8;
    a.image_index=rnd+dir10/12;
    a.friction=0.17;
    a.direction=dir10-90;
    a.active=1;
}

