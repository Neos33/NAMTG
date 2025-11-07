if(image_alpha > 0)
{
    image_alpha -= 1/steps;
}
else
{
    instance_destroy();
}

