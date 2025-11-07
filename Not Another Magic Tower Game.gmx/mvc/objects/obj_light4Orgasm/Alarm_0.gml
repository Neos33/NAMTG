if(image_alpha > 0)
{
 image_alpha -= 0.015;
 image_xscale += 0.08;
 image_yscale += 0.08;
 alarm[0] = 1;
}
else
{
 instance_destroy();
}

