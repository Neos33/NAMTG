if(alpha > 0)
{
    alpha -= 0.02;
    if(image_alpha > alpha)
    {
        image_alpha = alpha;
    }
    alarm[3] = 1;
}
else
{
    image_alpha = 0;
    x = targetX;
    appear = false;
    alarm[4] = 50;
}

