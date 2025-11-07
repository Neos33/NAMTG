if(image_alpha > 0)
{
    if(image_alpha == 1)
    {
        sound_fix(sndDevilLaugh1);
    }
    image_alpha -= 0.02;
    alarm[7] = 1;
}
else
{
    x = 400;
    y = 632;
    image_alpha = 1;
    image_blend = c_purple;
    drawDirt = true;
    dirtCount = 5;
    alarm[10] = 30;
}

