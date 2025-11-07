if(global.buildMode && checkMouse(x, y, x + sprite_width, y + sprite_height))
{
    if(mouse_check_button_released(mb_right))
    {
        instance_destroy();
    }
}
event_inherited();

if(place_meeting(x,y,obj_GDObjEffectIn) && !in)
{
    image_alpha = 0;
    alarm[11] = 1;   
}
if(place_meeting(x,y,obj_GDObjEffectOut) && !out)
{
    alarm[10] = 1;   
}

