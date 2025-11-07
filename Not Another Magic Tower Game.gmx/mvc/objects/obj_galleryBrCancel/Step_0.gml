if(keyboard_check_pressed(global.shotbutton))
{
    event_user(0);
}
if(!start) exit;
if(place_meeting(x,y,obj_galleryBrMouseControl))
{
    if(mouse_check_button_pressed(mb_left))
    {
        event_user(0);
    }
}

