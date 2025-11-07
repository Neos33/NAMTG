if(image_alpha > 0)
{
    image_alpha -= 0.05;
    alarm[3] = 1;
}
else
{
    var f = instance_create(x,y,objIndex);
        f.image_alpha = 0.6;
    instance_destroy();
}

