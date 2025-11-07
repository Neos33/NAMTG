if(alpha > 0)
{
    //red += 1;
    //image_blend = make_color_rgb(red,0,0);
    alpha -= 0.01;
    alarm[2] = 1;
}
else
{
    instance_destroy();
}

