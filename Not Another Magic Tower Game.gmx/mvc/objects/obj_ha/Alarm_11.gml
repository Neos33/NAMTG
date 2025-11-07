if(image_xscale > 0)
{
 image_xscale -= 0.1;
 image_yscale -= 0.1;
 image_angle -= 15;
 alarm[11] = 1;
}
else
{
 explodePolygon2(x, y, 6, 500, 0, 8, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8);
 instance_destroy();
}

