with(obj_tre_bullet){
    for(i=0;i<4;i+=1){
        a=instance_create(x,y,obj_tre_bullet3);
        a.sprite_index=sprite_index;
        a.image_index=image_index;
        a.speed=10//random_range(1,3);
        a.direction=point_direction(x,y,400,304)+90*i;//random(360);
        a.fade_o_change=1;
        a.friction=-0.04;
    }
}

