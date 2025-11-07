if instance_exists(obj_skeletonKing)
{
    if(obj_skeletonKing.y < 32)
    {
        obj_skeletonKing.y += 1;
        alarm[1] = 1;
    }
    else
    {
        alarm[2] = 30;
    }
}

