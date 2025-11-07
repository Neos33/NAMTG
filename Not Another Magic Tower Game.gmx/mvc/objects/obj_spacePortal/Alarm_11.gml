if(ind != 0)
{
    if(!global.SpaceItems[ind - 1])
    {
        instance_destroy();
    }
    else if(ind == 7)
    {
        if(!global.spaceTrigger)
        {
            instance_destroy();
        }
    }
}

