start = 0;
blendColor = 0;

if(global.story[31])
{
    instance_destroy();
}
blendColor = 255;
image_blend = make_color_rgb(blendColor,blendColor,blendColor);
image_speed = 1/15;

