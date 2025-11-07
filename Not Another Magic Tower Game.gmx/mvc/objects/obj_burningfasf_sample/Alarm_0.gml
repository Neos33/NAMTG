if(image_xscale<=3)
{
    image_xscale+=0.5/a;
    image_yscale+=0.5/a;
    alarm[0]=1;
    a+=1;
}
else
{
    image_angle+=7+a;
    a+=1;
    alarm[0]=1;
}

