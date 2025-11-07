if(blinkCount > 0)
{
    if(image_alpha == 0)
    {
        image_alpha = 1;
        blinkCount -= 1;
    }
    else
    {
        image_alpha = 0;
    }
    alarm[8] = 3;
}
else
{
    sound_fix(snd_touhou_spellcard);
}

