if(instance_number(obj_renelCherry) == 0)
{
    sound_fix(sndBlockChange);
    global.story[31] = true;
    with(obj_renelBlackCherry)
    {
        instance_destroy();
    }
    instance_destroy();
}

