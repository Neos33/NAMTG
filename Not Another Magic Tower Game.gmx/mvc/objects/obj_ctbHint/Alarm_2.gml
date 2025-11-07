if(alpha >0)
{
    alpha -= stepAlpha;
    alarm[2] = 1;
}
else
{
    instance_destroy();
}

