if(other.object_index != obj_iceBlock)
{
    instance_destroy();
}
else
{
    alarm[1] = 1;
    with(other)
    {        
        instance_destroy();
    }
}

