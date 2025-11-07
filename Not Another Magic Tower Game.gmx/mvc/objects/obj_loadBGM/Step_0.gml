if(musicPer < targetPer)
{
    musicPer += 1;
}
else 
{
    if(musicPer == 100)
    {
        if(!musicLoadEnd)
        {
            musicLoadEnd = true;
            alarm[1] = 1;
        }
    }
    else if(!isLoading)
    {
        isLoading = true;
        alarm[0] = 1;
    }
}

