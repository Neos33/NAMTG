if(abs(x-targetX) > 3)
{
    var dir = sign(x - targetX);
    x -= 3*dir;
    alarm[6] = 1;
}
else
{
    sprite_index = spr_diaoSlime_combat;
    y = baseY - 16;
    image_xscale = 1;
    image_yscale = 1;
    instance_destroy();
}

