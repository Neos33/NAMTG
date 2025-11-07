if(!inited)
{
    instance_create(x,y,obj_tlDWBomb);
    instance_create(x,y,obj_tlDWShadow);
    with(instance_create(x,y,obj_tlDWTarget))
    {
        inited = true;
    }
}

