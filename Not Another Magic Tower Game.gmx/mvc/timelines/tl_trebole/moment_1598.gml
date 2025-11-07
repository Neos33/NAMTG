with(obj_tre_wb){
    if(j==1){
        for(i=0;i<25;i+=1){
            a=instance_create(x,y,obj_tre_bullet);
            a.sprite_index=sprite_index;
            a.image_index=image_index;
            a.speed=10+i*2;
            a.no=1;
            a.direction = point_direction(400,304,x,y)
            a.alarm[0]=10;
        }
        instance_destroy()
    }
}

