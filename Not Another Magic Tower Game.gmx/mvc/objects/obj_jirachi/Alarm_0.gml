if(blendColor > 0)
{
    blendColor -= 5;
    alarm[0] = 1;
}
else
{
    sound_fix(sndJirachi);
    alarm[1] = 30;
    alarm[2] = 250;
}

