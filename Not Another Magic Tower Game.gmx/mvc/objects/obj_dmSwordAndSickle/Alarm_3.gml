if(status == 0)
{
    status = 1;
}
if instance_exists(obj_darkMage_combat2)
{
    if(obj_darkMage_combat2.hspeed < 0)
    {
        if(angle > -225)
        {
            angle -= 15;
            alarm[3] = 1;
        }
        else
        {
            alarm[4] = 5;
        }
    }
    else if(obj_darkMage_combat2.hspeed > 0)
    {
        if(angle < 225)
        {
            angle -= 15;
            alarm[3] = 1;
        }
        else
        {
            alarm[4] = 5;
        }
    }
}
image_angle = angle;


