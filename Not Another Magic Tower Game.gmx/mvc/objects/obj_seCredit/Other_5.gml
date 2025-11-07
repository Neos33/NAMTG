for(i=0;i<totalSections;i+=1)
{
    if(subList[i])
    {
        for(j=0;j<subListCount[i];j+=1)
        {
            ds_list_destroy(subCategory[i,j]);
        }
    }
    else
    {
        ds_list_destroy(list[i]);
    }
}

