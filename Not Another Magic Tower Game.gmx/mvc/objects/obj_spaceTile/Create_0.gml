alarm[0] = 1;
if(ind == -1) exit;
if(!global.SpaceItems[ind])
{
    instance_destroy();
}
else if(ind == 6)
{
    if(!global.spaceTrigger)
    {
        instance_destroy();
    }
}



