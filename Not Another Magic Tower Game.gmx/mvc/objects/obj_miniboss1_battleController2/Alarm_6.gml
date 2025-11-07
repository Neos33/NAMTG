if(spd > 0)
{
 spd -= 0.28;
 alarm[6] = 1;
}
else
{
 spd = 0;
 phase = 2;
 alarm[7] = 30;
 alarm[8] = 100;
}

