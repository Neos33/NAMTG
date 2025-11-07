with(obj_tre_bullet3){
    a=instance_create(x,y,obj_tre_bullet3);
    a.speed=point_distance(400,304,x,y)/12;
    a.direction=point_direction(400,304,x,y)+180;
    a.image_index=image_index;
    a.alarm[5]=13;
    a.unactive=1;
}

