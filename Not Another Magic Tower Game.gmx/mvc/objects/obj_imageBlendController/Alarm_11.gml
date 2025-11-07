if(changeTime < 100)
{
    changeTime += 1;
    r += gapR;
    g += gapG;
    b += gapB;
    color = make_color_rgb(r,g,b);
    global.img_blend = make_color_rgb(r,g,b);
    alarm[11] = 1;
}
else
{
    changeTime = 0;
    global.img_blend = global.targetImageBlend;
    color = global.img_blend;
    alarm[0] = 1;
}

