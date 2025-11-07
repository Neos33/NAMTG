if(part < 1)
{
    part += 0.02;
}
else if(!start)
{
    start = true;
    obj_dmLastController.alarm[3] = 50;
}
if(instance_exists(obj_levelupFlash))
{
    with(obj_levelupFlash)
    {
        image_xscale += 0.05;
        image_yscale += 0.05;
    }
}
if(status != 2)
{
    if instance_exists(obj_darkMage_combat2)
    {
        x = obj_darkMage_combat2.x;
        y = obj_darkMage_combat2.y;
    }
}

if(status != 0) exit;

if instance_exists(obj_darkMage_combat2)
{
    if(obj_darkMage_combat2.hspeed > 0)
    {
        image_index = 1;
        if(angle > - 45)
        {
            angle -= 9;
        }
    }
    else if(obj_darkMage_combat2.hspeed < 0)
    {
        image_index = 0;
        if(angle < 45)
        {
            angle += 9;
        }
    }
}
image_angle = angle;

if(!instance_exists(obj_darkMage_combat2))
{
    instance_destroy();
}

