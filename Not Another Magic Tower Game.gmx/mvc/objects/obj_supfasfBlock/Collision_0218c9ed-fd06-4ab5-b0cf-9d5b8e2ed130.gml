if(casement==0)
{
    instance_create(x,y,obj_fasfblockass);
    solid=0;
    visible=0;
    alarm[0]=100;
    casement=1;
    if(y > 576 || y < 32)
    {
        with(other)
        {
            if(twist != 1)
            {
                vspeed *= -0.3;
                hspeed *= 0.3;
                alarm[6] = 1;
            }
        }
    }
    else if(x > 768 || x < 32)
    {
        with(other)
        {
            if(twist != 1)
            {
                hspeed *= -0.3;
                vspeed *= 0.3;
                alarm[6] = 1;
            }
        }
    }
}

