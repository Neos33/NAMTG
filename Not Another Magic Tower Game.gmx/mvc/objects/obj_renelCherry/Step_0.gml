if(start)
{
    if(blendColor > 0)
    {
        blendColor -= 5;
        image_blend = make_color_rgb(blendColor,blendColor,blendColor);
    }
    else
    {
        instance_change(obj_renelBlackCherry, true);
    }
}

