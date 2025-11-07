if(image_alpha > 0)
{
    image_alpha -= 0.04;
    alarm[1] = 1;
}
else
{
    obj_magicianlv1_combat.alarm[7] = 30;
    instance_destroy();
}

