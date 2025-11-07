if(!isOpen)
{    
    open = true;
    for(i = 0; i < total; i+=1)
    {
        result = open && global.monsters[ind[i]];
        open = result;
    }
    if(open)
    {
        isOpen = true;
        alarm[0] = 1;
    }
}

