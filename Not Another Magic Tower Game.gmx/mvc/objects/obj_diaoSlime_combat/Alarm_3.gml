if(pCount < 25)
{
    pCount += 1;
    alarm[3] = 1;
}
else
{
    if(result == 2)
    {
        instance_create(704 + 16,544 + 16,obj[result]);
    }    
    else
    {
        instance_create(704,544,obj[result]);
    }
    status = 4;
}

