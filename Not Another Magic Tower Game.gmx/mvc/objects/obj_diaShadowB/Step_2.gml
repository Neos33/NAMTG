if(wrap)
{
    // if(x-hspeed>800)
    // {
    //     vspeed*=-1;
    // }
    // else if(x-hspeed<0)
    // {
    //     vspeed*=-1;
    // }
    if in_range(x, 0, 800) == false
    {
        x = modwrap(x, 0, 800);
        vspeed *= -1;
    }
}

