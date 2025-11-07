count = 0;
with(obj_iceBlock)
{
    if(isRemain)
    {
        other.count += 1;
    }
    else
    {
        other.count -= 1;
    }
}
if(count == 5 && !isTriggered)
{
    isTriggered = true;
    instance_create(0,0,obj_secret2Controller);
    sound_fix(sndSwitch);
    //instance_create(400 + 35 * 10, 304 - 42 * 10, obj_meteor);
}
time += 1;

