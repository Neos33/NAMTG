sound_fix(sndIce1);
if(instance_exists(obj_faShiliuHPBlock))
{
    with(obj_faShiliuHPBlock)
    {
        instance_destroy();
    }
}
instance_create(x,y,obj_faShiliuHPBlock);

