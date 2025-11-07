if(image_xscale > 0)
{
 image_xscale -= 0.02;
 image_yscale -= 0.02;
 image_angle -= 24;
 y -= 5;
 x += 2;
 alarm[0] = 1;
}
else
{
 instance_destroy();
}

