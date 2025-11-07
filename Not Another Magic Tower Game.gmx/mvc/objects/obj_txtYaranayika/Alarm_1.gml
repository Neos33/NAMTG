if(image_xscale > 0.1)
{
 image_xscale -= 0.05;
 image_yscale -= 0.05;
 image_angle -= 20;
 alarm[1] = 1;
}
else
{
    explodePolygon2(x, y, 5, 500, image_index * 36, 6, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8);
    instance_destroy();
}

