with(other)
{
    x = 400 + choose(1,-1) * random_range(64,200);
    y = random_range(32, 256);
    djump = true;
    instance_create(x,y,obj_appearEffect);
}

