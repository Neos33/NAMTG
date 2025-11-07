//th.x = x;
//th.y = y;
if(keyboard_check_direct(global.jumpbutton))
{
    vspeed = -6;
    th.vspeed = -6;
    image_index = 0;
    if(flag != 1)
    {
        event_user(0);
        flag = 1;
    }
}
else
{
    vspeed = 6;
    th.vspeed = 6;
    image_index = 1;
    if(flag != 0)
    {
        event_user(0);
        flag = 0;
    }
}

if(keyboard_check_pressed(global.shotbutton))
{
    if(instance_number(bullet) < 4)
    {
        sound_fix(sndShoot);
        b = instance_create(x,y,bullet);
        b.hspeed = 22;
    }
}
with(bullet)
{
    hspeed = 22;
}

with(obj_phase2Bevel1)
{
    if(x < (__view_get( e__VW.XView, 0 ) + 688))
    {
        if(x > __view_get( e__VW.XView, 0 ) + 112)
        {
            if(image_alpha < 1 && instance_exists(obj_trianglePlane))
            {
                image_alpha += 0.05;
            }
        }
        else
        {
            if(image_alpha > 0 && instance_exists(obj_trianglePlane))
            {
                image_alpha -= 0.05;
            }
        }    
    }
}

