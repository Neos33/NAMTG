with(obj_tre_bullet3){
    if(active){
    for(i=0;i<15;i+=1){
        a=instance_create(x,y,obj_tre_bullet3);
        a.dis=2*point_distance(x,y,400,304)*sin(2/5*pi)/15*i;
        a.speed=12;
        a.image_index=image_index;
        a.friction=cal_friction(12,a.dis);
        a.active=1;
        a.direction=point_direction(x,y,400,304)+18;
    }
    }
}

