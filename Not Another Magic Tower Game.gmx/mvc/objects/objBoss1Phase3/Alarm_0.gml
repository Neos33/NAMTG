if count<7
{
    instance_create(x,y,objBoss1Pattern4);
    count+=1;
    alarm[0]=4*SPB;
}
else
{
    alarm[0]=0;
    alarm[1]=SPB;
}

