randomNum = random_range(1,110);
result = floor(randomNum / 20);
while(result == pIndex)
{
    randomNum = random_range(1,85);
    result = floor(randomNum / 20);
}
pIndex = result;
pCount = 0;
if(result < 5)
{
    alarm[3] = 5;
    status = 1;
}
else
{
    status = 2;
    flash = instance_create(x + 16, y + 16, obj_levelupFlash);
    flash.image_xscale = 5;
    flash.image_yscale = 5;
    x = -32;
    y = -32;
    sound_stop_all();
    sound_fix(sndExpMax);
    alarm[5] = 50;
}

