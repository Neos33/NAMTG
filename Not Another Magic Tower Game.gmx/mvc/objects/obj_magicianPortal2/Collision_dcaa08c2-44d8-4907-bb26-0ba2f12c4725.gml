with(other)
{
    x = 400 + choose(1,-1) * random_range(64,352);
    y = random_range(32, 256);
    instance_create(x,y,obj_appearEffect);
}

