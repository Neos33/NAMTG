if(blendAlpha < 255)
{
    blendAlpha += 3;
    if(blendAlpha >= 255)
    {
        blendAlpha = 255;
    }
    blendColor = make_color_rgb(blendAlpha,blendAlpha,blendAlpha);
    with(obj_16FControlledNPC1)
    {
        image_blend = other.blendColor;
    }
    alarm[7] = 1;
}
else
{
    alarm[8] = 10;
}

