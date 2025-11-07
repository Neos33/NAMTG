if(abs(x - targetX1) > 2)
{
    xStep = 2 * sign(targetX1 - x);
    x += xStep;
    alarm[4] = 1;
}
else
{
    x = targetX1;
    dash = true;
    image_index = 2;
    audio_playsound(sndSkill15);
    alarm[5] = 1;
}

