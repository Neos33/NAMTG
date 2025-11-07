if(solid)
{
    solid = false;
    speed = random_range(2,4)
    gravity = 0.1;
    direction = random_range(0,360);
}
if(image_alpha > 0)
{
    image_alpha -= 0.05;
    image_alpha += rspd;
    alarm[0] = 1;
}

