if(other.clear)
{
    p1 = instance_create(x,y,obj_beBossPhase3Bullet4);
    p1.direction = random_range(90,120);
    p1.speed = random_range(5,7);
    p2 = instance_create(x,y,obj_beBossPhase3Bullet4);
    p2.direction = random_range(60,90);
    p2.speed = random_range(5,7);
    instance_destroy();
}

