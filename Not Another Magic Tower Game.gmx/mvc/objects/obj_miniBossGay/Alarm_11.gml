
    alarm[10] = 0;
    alarm[2] = 0;
    with(obj_minibossKappa)
    {
     alarm[4] = 0;
     image_angle = 0;
    }
    instance_create(0,0,obj_blinkBlack);
    with(obj_minibossBullet1)
    {
     speed = 0;
    }
    instance_create(0,0,obj_miniboss1_battleController4);


