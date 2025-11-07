dir=45;
repeat(2){
    a=instance_create(x,y,objBoss1Pattern2);
    a.direction=dir;
    a.speed=10;
    dir+=180;
}

