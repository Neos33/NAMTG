if(y > 700)
{
    instance_destroy();
}

piece = instance_create(x + random_range(-8 * scaleRnd,12 * scaleRnd),y + random_range(-3 * scaleRnd, 0),obj_floor_meteorPiece);


