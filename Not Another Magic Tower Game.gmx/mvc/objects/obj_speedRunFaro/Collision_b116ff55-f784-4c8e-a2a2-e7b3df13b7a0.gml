if(other.visible)
{
    with(other)
    {
        faroFrag = instance_create(x,y,obj_speedRunFrag);
        faroFrag.sprite_index = sprite_index;
        faroFrag.image_index = image_index;
        instance_destroy();
    }
}

