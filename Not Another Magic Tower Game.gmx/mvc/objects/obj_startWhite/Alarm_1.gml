stop = true;
if(image_alpha > 0)
{
    image_alpha -= 0.05;
    alarm[1] = 1;
}
else
{
    //instance_create(64,480,obj_geRainbowDrawer);
    instance_destroy();
}

