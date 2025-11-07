x = obj_darkLord_combat.x;
y = obj_darkLord_combat.y;
if(image_alpha > 0)
{
    image_xscale += 0.04;
    image_yscale += 0.04;
    image_alpha -= 0.04;
}
else
{
    instance_destroy();
}

