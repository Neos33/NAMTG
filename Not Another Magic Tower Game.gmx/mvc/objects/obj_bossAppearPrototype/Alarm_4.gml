if(blendColor < 255)
{
    blendColor += 5;
    image_blend = make_color_rgb(blendColor,blendColor,blendColor);
    alarm[4] = 1;
}

