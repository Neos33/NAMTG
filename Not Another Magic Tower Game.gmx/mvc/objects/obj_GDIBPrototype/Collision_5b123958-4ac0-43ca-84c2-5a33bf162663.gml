if(global.targetImageBlend != color)
{
    global.targetImageBlend = color;
    obj_imageBlendController.r = color_get_red(global.img_blend);
    obj_imageBlendController.g = color_get_green(global.img_blend);
    obj_imageBlendController.b = color_get_blue(global.img_blend);
    obj_imageBlendController.tr = color_get_red(global.targetImageBlend);
    obj_imageBlendController.tg = color_get_green(global.targetImageBlend);
    obj_imageBlendController.tb = color_get_blue(global.targetImageBlend);
    obj_imageBlendController.gapR = (color_get_red(global.targetImageBlend) - color_get_red(global.img_blend)) / 100;
    obj_imageBlendController.gapG = (color_get_green(global.targetImageBlend) - color_get_green(global.img_blend)) / 100;
    obj_imageBlendController.gapB = (color_get_blue(global.targetImageBlend) - color_get_blue(global.img_blend)) / 100;
    obj_imageBlendController.alarm[0] = 0;
    obj_imageBlendController.alarm[1] = 0;
    obj_imageBlendController.alarm[11] = 1;
    instance_destroy();
}

