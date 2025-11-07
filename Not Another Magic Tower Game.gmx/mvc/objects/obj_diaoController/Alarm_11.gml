if(image_yscale < 1)
{
    image_yscale += 0.08;
    alarm[11] = 1;
}
else
{
    shoot = true;
    alarm[6] = 75;   
}


