if image_alpha<1
{
    image_alpha+=0.1;
    image_xscale-=0.25;
    image_yscale-=0.25;
}
else
{
    var a=instance_create(x,y,obj_finalDiamanteB0);
    a.depth=1;
    a.image_index=image_index;
    a.speed=spd;
    a.direction=dd;
    instance_destroy()
}

