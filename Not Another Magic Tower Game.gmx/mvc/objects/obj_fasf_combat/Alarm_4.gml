if spddd=1
{
    var aa=instance_create(x,y,fasf_ball);
    aa.direction=random_range(1,359);
    aa.speed=random_range(4,8)
    sound_fix(sndShoot);
    alarm[4]=3;
}
else
{
    image_speed=0;
    image_index=0;
    instance_create(0,0,white_flash1);
    with(fasf_ball)
    {
        move_towards_point(400,302,3);
        friction=-0.15;

    }
    alarm[5]=120;
}


