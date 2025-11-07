if(ind < count)
{
    p = ds_list_find_value(list,ind);
    with(obj_tdSpike)
    {
        if(ind == other.p)
        {
            laserStart = instance_create(x+16,y+32,obj_dlLaserStart);
            laserStart.target = instance_position(x,y,object_index);
        }
    }
    ind += 1;
    alarm[0] = 40;
}
else
{
    instance_destroy();
}

