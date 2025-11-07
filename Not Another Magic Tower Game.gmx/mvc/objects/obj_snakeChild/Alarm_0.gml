if(index > 0)
{
    child = instance_create(x,y,obj_snakeChild);
    child.depth = depth + 1;
    child.index = index - 1;
}

