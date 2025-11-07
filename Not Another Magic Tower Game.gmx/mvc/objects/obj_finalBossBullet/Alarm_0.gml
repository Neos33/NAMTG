if(speed <= friction){
    friction = -0.1;
    active = 1;
}
if(active){
    t0 += 1;
    if t0 > 20 && t0 < 45{
        direction += dirspd;
    }
    else{
        alarm[0] = 0;
    }
}
alarm[0] = 1;

