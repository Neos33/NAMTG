if(image_index > 0)
{
    image_index -= 1;
    if(!isShoot)
    {
        fb = instance_create(x + 16, y + 16, obj_iceFireBall);
        fb.image_angle = 270;
        fb.vspeed = 5;
        rnd = random(100000);
        fb.rnd = rnd;
        isShoot = true;
    }
    alarm[1] = 5;
}
else
{
    isShoot = false;
    isHit = false;
}

