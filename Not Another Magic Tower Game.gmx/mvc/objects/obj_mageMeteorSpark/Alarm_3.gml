if(count < 6)
{
    count += 1;
}
for(var i = count; i >=0; i-=1)
{
    if(i > 0)
    {
        record_x[i] = record_x[i - 1];
        record_y[i] = record_y[i - 1];
    }
    else
    {
        record_x[0] = x; 
        record_y[0] = y; 
    }
}
alarm[3] = 1;

