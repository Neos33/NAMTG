if(x - b1[0].x < radius)
{
    for(i = 0; i < 10; i+=1)
    {
        b1[i].x -= 8;    
    }   
    alarm[1] = 1;      
}
else
{
    for(i = 0; i < 10; i+=1)
    {
        b1[i].x = x - radius;
    }
}

