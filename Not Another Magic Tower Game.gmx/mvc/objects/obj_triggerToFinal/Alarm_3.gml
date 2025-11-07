if(blendAlpha > 0)
{
    blendAlpha -= 3;
    if(blendAlpha <= 0)
    {
        blendAlpha = 0;
    }
    blendColor = make_color_rgb(blendAlpha,blendAlpha,blendAlpha);
    with(obj_16FControlledNPC1)
    {
        image_blend = other.blendColor;
    }
    alarm[3] = 1;
}
else
{
    alarm[4] = 10;
}

