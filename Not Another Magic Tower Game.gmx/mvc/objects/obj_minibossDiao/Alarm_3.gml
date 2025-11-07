if(pCount < 4)
{
    if(image_yscale > 0.50)
    {
     image_yscale -= 0.04;
     alarm[3] = 1;
    }
    else
    {
     pCount += 1;
     alarm[4] = 7;
    }
}

