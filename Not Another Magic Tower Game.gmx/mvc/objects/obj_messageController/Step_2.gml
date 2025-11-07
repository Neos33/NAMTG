if(!is_message() && sprite_exists(pauseImg)) {
    instance_activate_all();
    if(instance_exists(obj_skipInfo))
    {
        with(obj_skipInfo)
        {
            instance_destroy();
        }
    }
    if(instance_exists(obj_msgItemInfo))
    {
        with(obj_msgItemInfo)
        {
            instance_destroy();
        }
    }
}

