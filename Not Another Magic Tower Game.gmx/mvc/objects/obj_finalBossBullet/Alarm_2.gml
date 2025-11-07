if(speed <= friction){
    friction = -0.05;
    active = 1;
}
if(active){
    t0 += 1;
    if t0 > 10 && t0 < 30{
        direction += dirspd;
    }
    else{
        alarm[2] = 0;
    }
}
alarm[2] = 1;

