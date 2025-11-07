if(scale > minScale)
{
    scale -= 0.01;
    alpha -= 0.01;
    alarm[1] = 1;
}
else
{
    alarm[0] = 1;
}

