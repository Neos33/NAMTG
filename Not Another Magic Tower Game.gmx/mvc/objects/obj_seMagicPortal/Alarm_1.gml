if(image_alpha > 0)
{
    image_alpha -= 0.02;
    obj_sePricessDown.image_alpha = image_alpha;
    alarm[1] = 1;
}
else
{
    alarm[2] = 50;
}

