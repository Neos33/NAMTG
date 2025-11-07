if(other.rnd != rnd)
{
    alarm[0] = 1;
    with(other)
    {
        instance_destroy();
    }
}

