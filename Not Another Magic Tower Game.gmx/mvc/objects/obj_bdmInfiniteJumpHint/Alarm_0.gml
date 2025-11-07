if(alpha > 0)
{
    alpha -= 0.01;
    alarm[0] = 1; 
}
else
{
    instance_destroy();
}

