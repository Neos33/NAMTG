if(global.buildMode && checkMouse(x, y, x + sprite_width, y + sprite_height))
{
    if(mouse_check_button_released(mb_right))
    {
        instance_destroy();
    }
}


if(place_meeting(x,y,obj_GDObjEffectIn) && !in)
{
    in = true;
    image_alpha = 0;
    alarm[11] = 1;   
}
if(place_meeting(x,y,obj_GDObjEffectOut) && !out)
{
    out = true;
    alarm[10] = 1;   
}

