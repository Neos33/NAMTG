if(image_xscale > 0)
{
    image_xscale -= 0.02;
    image_yscale -= 0.02;
    image_alpha -= 0.02;
    alarm[4] = 1;
}
else
{
    if(obj_giantBat_combat.targetScale + instance_number(obj_giantBat_energy) < 10)
    {
        obj_giantBat_combat.alarm[t] = irandom_range(30,40);
    }
    instance_destroy();
}

