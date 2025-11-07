if(y >= 608)
{
    repeat(amount)
    {
        var b = instance_create(x,607,obj_dsCGBulletCommon);
        b.speed = random_range(minSpd, maxSpd);
    }
    instance_destroy();
}

