if(phase == 0)
{
    if(instance_exists(obj_black))
    {
        if(obj_black.image_alpha > 0)
        {
            with(obj_black)
            {   
                image_alpha -= 0.005;
            }
        }
        else
        {
            with(obj_black)
            {
                instance_destroy();
            }
            phase = 1;
        }
    }
}

