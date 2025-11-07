with(obj_tre_bullet3){
    alarm[4] = 0;
    image_alpha = 1;
    if(len == 100){
        speed = 2;
        direction = -point_direction(x,y,400,304) + 90;
        friction = -0.1;
        dirspd = 0.2;
    }
    if(len == 108){
        speed = 2;
        direction = -point_direction(x,y,400,304) + 270;
        friction = -0.1;
        dirspd = -0.2;
    }
}

