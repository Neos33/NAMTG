if(mouse_check_button(mb_left))
{
    if(ds_list_size(list) > 0 && player.x > 0 && mouse_x <= (__view_get( e__VW.XView, 0 ) + room_width) && mouse_x >= __view_get( e__VW.XView, 0 ) && mouse_y >= __view_get( e__VW.YView, 0 ) && mouse_y <= (__view_get( e__VW.YView, 0 ) + room_height))
    {        
        isDraw = true;
    }
    else
    {
        isDraw = false;
    }
}
if(isDraw)
{
    sprX = mouse_x;
    sprY = mouse_y;
}
if(mouse_check_button_released(mb_left) && isDraw)
{
    obj = ds_list_find_value(list, currentIndex);
    instance_create(sprX, sprY, obj);
    item = ds_map_find_value(map, obj);
    item.ammount -= 1;
    if(item.ammount == 0)
    {
        ds_list_delete(list, currentIndex);
        ds_map_delete(map, obj);
        currentIndex = 0;
        with(item)
        {
            instance_destroy();
        }
    }
    isDraw = false;
}

listSize = ds_list_size(list);
if(keyboard_check_released(vk_tab) && listSize > 0)
{
    sound_fix(snd_click);
    if(currentIndex == listSize - 1)
    {
        currentIndex = 0;
    }
    else
    {
        currentIndex += 1;
    }
}

