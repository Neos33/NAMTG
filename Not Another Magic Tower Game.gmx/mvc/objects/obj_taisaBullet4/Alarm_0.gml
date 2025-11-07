count+=1;
if(count<12)
{
    direction += 15;
    alarm[0] = 1;
}
else if(count<time)
{
    direction += 3;
    alarm[0] = 1;
}

