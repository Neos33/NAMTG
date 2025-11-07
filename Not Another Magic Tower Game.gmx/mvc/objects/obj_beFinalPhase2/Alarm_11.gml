if(image_alpha < 1)
{
    image_alpha += 0.02;
    alarm[11] = 1;
}
else
{
    mc = instance_create(x,y,obj_beFinalMagicCircle);
    //alarm[0] = 70;
    //alarm[1] = 10;
}

