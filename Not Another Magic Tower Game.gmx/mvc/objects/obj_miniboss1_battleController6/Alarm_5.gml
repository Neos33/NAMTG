cCount += 1;

if(obj_miniBossGay.image_index == 0)
{
 obj_miniBossGay.image_index = 1;
}
else
{
 obj_miniBossGay.image_index = 0;
}

if(cCount == 1)
{
 h1 = instance_create(328, 288,obj_gayHeart);
 h1.hspeed = -0.5;
}
else if(cCount == 3)
{
 h2 = instance_create(472, 288,obj_gayHeart);
 h2.hspeed = 0.5;
}
else if(cCount == 5)
{
 h3 = instance_create(328, 288,obj_gayHeart);
 h3.hspeed = 0.5;
}
else if(cCount == 7)
{
 h4 = instance_create(472, 288,obj_gayHeart);
 h4.hspeed = -0.5;
}
else if(cCount == 9)
{
 h5 = instance_create(400, 304,obj_gayHeart);
 h5.image_xscale = 2.5;
 h5.image_yscale = 2.5;
 h5.vspeed = -1;
}

if(cCount < 9)
{
 alarm[5] = 10;
}
else
{
    obj_miniBossGay.image_index = 0;
}

