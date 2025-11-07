if(image_xscale < 4.8)
{
    image_xscale += 0.06;
    image_yscale += 0.02;
    alarm[0] = 1;
}
else
{
    obj_magicianlv1_combat.alarm[5] = 20;
}

