if(image_alpha < 1)
{
    image_alpha += 0.02;
    alarm[11] = 1;
}
else
{
    instance_create(x,y,obj_beMagicCircle);
    alarm[0] = 20;
    alarm[1] = 10;
    alarm[2] = 30;
}

