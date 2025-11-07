rnd=irandom(24);
with(obj_tre_bullet3){
    if(active){
        a=instance_create(x,y,obj_tre_bullet3);
        a.speed=point_distance(400,304,x,y)/15;
        a.direction=point_direction(400,304,x,y);
        a.image_index=0;
        image_index=6;
    }
}

