if(image_alpha > 0)
{
    image_alpha -= 0.02;
    image_xscale += 0.1;
    image_yscale += 0.1;
    alarm[0] = 1;
}
else
{
    var c = instance_create(x,y,obj_mageElementController);
    c.index = index;
    instance_destroy();
}

