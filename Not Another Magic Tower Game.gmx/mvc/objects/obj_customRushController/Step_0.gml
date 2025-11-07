if(keyboard_check_pressed(global.leftbutton))
{
    event_user(1);
}

if(keyboard_check_pressed(global.rightbutton))
{
    event_user(2);
}

if(keyboard_check_pressed(vk_space))
{
    if(obj_galleryBrSelect.image_index == 0)
    {
        event_user(3);
    }
    else
    {
        event_user(4);
        obj_galleryBrSelect.image_index = 0;
    }
}

