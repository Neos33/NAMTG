sound_fix(sndIce1);
image_xscale = 1;
image_yscale = 1;
sprite_index = spr_giantBatTransformed;
if(transformCount < 4)
{    
    alarm[6] = 5;
    alarm[5] = transformInterval;
    transformInterval -= 10;
    transformCount += 1;
}
else
{
    juhua = true;
}

