if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_left))
    {
        with(obj_customRushController)
        {
            event_user(2);
        }
    }
}

