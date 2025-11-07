if(image_alpha > 0)
{
    var p = instance_create(x + random_range(-10,10), y + 10, obj_redKnightDashParticle);
    p.speed = 2;
    p.direction = point_direction(x,y,p.x,p.y);
    alarm[0] = 1/image_alpha;
}

