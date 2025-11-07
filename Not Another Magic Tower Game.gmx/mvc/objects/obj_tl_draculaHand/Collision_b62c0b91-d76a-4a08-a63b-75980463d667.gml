if(image_alpha > 0.7)
{
    if(sign(other.hspeed) != sign(image_xscale))
    {
        var b = instance_create(other.x, other.y, obj_reflectBullet);
        b.sprite_index = other.sprite_index;
        b.image_index = other.image_index;
        b.image_xscale = other.image_xscale;
        b.image_yscale = other.image_yscale;
        b.speed = 16;
        b.image_angle = 90 - 45 * sign(image_xscale);       
        b.direction = 90 - 45 * sign(image_xscale);       
    }
    with(other)
    {
        hitEffect();
        instance_destroy();
    }
}

