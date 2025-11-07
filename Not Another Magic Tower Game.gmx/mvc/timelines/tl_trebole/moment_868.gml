with(obj_tre_bullet3){no=0;}
with(obj_tre_bullet3){
    if(active){
    spin = 1;
    len = point_distance(400,304,x,y);
    ang = point_direction(400,304,x,y);
    alarm[3] = 1;
    lenspd = -len/50;
    angspd = 1;
    aangspd = 0.025;
    }
}

