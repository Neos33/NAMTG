if(explodeCount > 0)
{
 explodeCount-= 1;
 explodePolygon(centerX, centerY, 7 - explodeCount, 500, 0, 8, 50, obj_smallGrayCherry, spr_minibossbullet, 1/8, 1);
 alarm[4] = 10;
}
else
{
 alarm[3] = 0;
 x = centerX;
 y = centerY;
 image_index = 0;
 collision = true;
 move = true;
 alarm[5] = 40;
}

