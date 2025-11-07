if(destroy)
{
    depth += 1;
    if(width > 1)
    {
        width -= 1;
    }
    else
    {
        instance_destroy();
    }
}

