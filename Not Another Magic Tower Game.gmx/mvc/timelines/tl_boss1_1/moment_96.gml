dir=45;
repeat(2){
    a=instance_create(x,y,objBoss1Pattern1);
    a.direction=dir;
    a.speed=10;
    a.friction=cal_friction(10,150);
    dir+=180;
}

