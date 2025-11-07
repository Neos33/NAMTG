if(!drawAmply)
{
    if(image_xscale < 0.4)
    {
        image_xscale += 0.04;
        image_yscale += 0.04;
        image_alpha += 0.06;
    }
    else
    {
        image_xscale = 0.4;
        image_yscale = 0.4;
        drawAmply = true;
    }
}
else
{
  if(alpha > 0)
  {
    scale += 0.05;
    alpha -= 0.05;
  }
}

