if(image_alpha > 0)
{
    image_alpha -= 0.04;
}
else
{
    if(alpha > 0)
    {
        alpha -= 0.04;
    }
    else
    {
        instance_destroy();
    }
}

