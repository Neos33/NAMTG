image_angle += speed;
speed += 0.06 * sign(hspeed);
if(x < -100 || x > 900)
{
    instance_destroy();
}

