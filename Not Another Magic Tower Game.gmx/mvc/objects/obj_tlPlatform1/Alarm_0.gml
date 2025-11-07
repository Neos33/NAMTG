if(abs(y-targetY) > 1)
{
    b.vspeed = -0.5;
    vspeed = -0.5;
    alarm[0] = 1;
}
else
{
    vspeed = 0;
    with(b) {instance_destroy()};
    y = targetY;
    with(instance_create(x,y,movingPlatform))
    {
        visible = false;
        image_yscale = 2;
    }
}

