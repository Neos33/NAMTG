x = obj_osuHpAva.x;
y = obj_osuHpAva.y;
if(image_alpha > 0)
{
    image_alpha -= 0.1;
    image_xscale += 0.1;
    image_yscale += 0.1;
}
else
{
    instance_destroy();
}

