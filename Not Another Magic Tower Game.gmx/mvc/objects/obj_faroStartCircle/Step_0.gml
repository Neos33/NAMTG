if(!drawNum)
{
    if(image_xscale < 0.4)
    {
        image_xscale += 0.04;
        image_yscale += 0.04;
        image_alpha += 0.1;
    }
    else
    {
        image_xscale = 0.4;
        image_yscale = 0.4;
        drawNum = true;
    }
}
else
{
  if(alpha > 0)
  {
    if(burst)
    {
        alpha -= 0.05;
        scale += 0.02;
    }
    else
    {
        alpha -= 0.1;
        scale += 0.04;
    }
  }
}

if(burst)
{
    if(alpha <= 0)
    {
        alpha = 1;
        scale = 0.5;
    }
}


