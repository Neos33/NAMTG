if(image_xscale > 0)
{
    image_xscale  -= 0.02;
    image_yscale -= 0.02;
    alarm[4] = 1;
}
else
{
    sprite_index = spr_tlTrueForm;
    with(circle)
    {
        instance_destroy();
    }
    alarm[5] = 1;
}

