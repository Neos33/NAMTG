if(global.buildMode && checkMouse(x, y, x + sprite_width, y + sprite_height) && object_index != obj_GD_Ground)
{
    if(mouse_check_button_released(mb_right))
    {
        instance_destroy();
    }
}

if(object_index != obj_GD_Ground && place_meeting(x,y,obj_GDObjEffectIn) && !in)
{
    inProcess = true;
    image_alpha = 0;
    alarm[11] = 1;   
}
if(object_index != obj_GD_Ground && place_meeting(x,y,obj_GDObjEffectOut) && !out)
{
    inProcess = true;
    alarm[10] = 1;   
}

