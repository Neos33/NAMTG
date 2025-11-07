if(image_xscale < 0.8)
{
    image_xscale += 0.01;
    image_yscale += 0.01;
    alarm[3]= 1;
}
else
{
    alarm[2] = 10;
}

