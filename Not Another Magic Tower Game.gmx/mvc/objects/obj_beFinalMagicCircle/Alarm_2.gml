/// @description  Scale down
if(image_xscale > 0.4)
{
    image_xscale -= 0.01;
    image_yscale -= 0.01;
    alarm[2]= 1;
}
else
{
    alarm[3] = 10;
}

