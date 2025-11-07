if(start)
{
    if(blendColor > 0)
    {
        blendColor -= 5;
        image_blend = make_color_rgb(blendColor,0,0);
    }
    else
    {
        instance_change(obj_finalPuzzleBlackCherry, true);
    }
}

