with(instance_create(laserX, -32, obj_seLaser))
{
    direction = point_direction(x,y,other.x,other.y);
    target = other.id;
}

