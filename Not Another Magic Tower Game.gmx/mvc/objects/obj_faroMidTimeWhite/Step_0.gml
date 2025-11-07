if(image_alpha < 1)
{
    image_alpha += 0.02;
}
else if(!transfer)
{
    transfer = true;
    alarm[0] = 10;
}

