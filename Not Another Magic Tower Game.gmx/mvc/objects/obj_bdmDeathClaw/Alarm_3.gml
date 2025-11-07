if(image_alpha < 1)
{
    image_alpha += 0.02;
    alarm[3] = 1;
}
else
{
    start = true;
    sound_fix(sndSwing1);
    alarm[4] = 1;
}

