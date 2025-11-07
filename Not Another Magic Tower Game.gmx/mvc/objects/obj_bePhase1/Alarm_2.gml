if(!instance_exists(obj_controlTop))
{
    p = true;
    controlHeight = 200;
    bounce = true;
    instance_create(0,y -192,obj_controlTop);
    instance_create(0,y + 192,obj_controlBottom);
    //instance_create(0,y,obj_controlMiddle);
    alarm[2] = 1;
}
else
{
    if(controlHeight > 80)
    {
        controlHeight -= 2;
        alarm[2] = 1;
    }
    else
    {
        if(p)
        {
            p = false;
            alarm[2] = 10;
        }
        else
        {
            bounce = false;
            with(obj_controlTop)
            {
                instance_destroy();
            }
            with(obj_controlBottom)
            {
                instance_destroy();
            }
            with(obj_controlMiddle)
            {
                instance_destroy();
            }
        }
    }
}

