with(obj_supfasfBlock)
{
    if(y <= other.baseline)
    {
        alarm[2] = 1;
    }
}
baseline += 32;
if(baseline < 700)
{
    alarm[7] = 16;
}

