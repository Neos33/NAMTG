if(r > 0)
{
    r -= 4;
}
else
{
    instance_create(400,304,obj_tlDarkSummoner);
    with(obj_tlDSBulletLeader)
    {
        instance_destroy();
    }
    instance_destroy();
}

