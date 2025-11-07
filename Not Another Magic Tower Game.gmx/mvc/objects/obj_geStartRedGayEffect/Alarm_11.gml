if(alpha1 > 0)
{
    alpha1 -= 0.02;
    alarm[11] = 1;
}
else
{
    instance_destroy();
}

