if(global.randomMonstersKilled >= 10)
{
    if(global.story[26])
    {
        instance_destroy();
    }   
    else
    {
        alarm[0] = 1;
    }
}

