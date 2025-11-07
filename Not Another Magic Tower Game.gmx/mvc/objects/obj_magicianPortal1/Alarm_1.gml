if(image_xscale > 0)
{
    image_xscale -= 0.2;
    image_yscale -= 0.1;
    alarm[1] = 1;
}
else
{
    obj_magicianlv1_combat.alarm[6] = 20;
    instance_destroy();
}

