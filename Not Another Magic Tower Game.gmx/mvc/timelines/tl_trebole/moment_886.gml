with(obj_tre_bullet3){
    if(active){
        a=instance_create(x,y,obj_tre_bullet3);
        a.speed=point_distance(400,304,x,y)/18;
        a.direction=point_direction(400,304,x,y);
        a.image_index=6;
        image_index=12;
    }
}

