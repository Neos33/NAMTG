if(image_xscale < 1)
{
    image_xscale += 0.02;
    image_yscale -= 0.02;
    image_alpha += 0.02;
    alarm[3] = 1;
}
else
{   
    partStart = true;
    with(obj_dmChangeEffect)
    {
        instance_destroy();
    }
    //alarm[11] = 30;
    alarm[4] = 20;
}

