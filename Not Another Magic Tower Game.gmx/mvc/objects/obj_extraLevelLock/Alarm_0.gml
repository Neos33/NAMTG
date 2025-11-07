if(shakeCount >= 0)
{
    image_angle = sign((shakeCount mod 2) - 0.5) * random_range(5,15);
    alarm[0] = 10;
}
else
{
    image_angle = 0;
    alarm[1] = 1;
}

