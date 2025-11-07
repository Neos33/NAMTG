if(transformed && juhua)
{
    if(point_distance(x,y,other.x,other.y) < 120)
    {
        event_inherited();
    }
}
else
{
    sound_fix(sndIce1);
    with(other)
    {
        instance_destroy();
    }
    b = instance_create(x,y,obj_monsterHPBlock);
    b.image_xscale = image_xscale / 2 + 0.3;
    b.image_yscale = image_yscale / 2 + 0.3;
}

