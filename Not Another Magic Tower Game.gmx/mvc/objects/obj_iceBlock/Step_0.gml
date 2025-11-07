if(global.story[9] && isKey)
{
    if(!global.greenKeys[2])
    {
        with(obj_greenKey)
        {
            x = other.x;
            y = other.y;
        }
    }
    sound_fix(sndEarth1);
    instance_destroy();
}

