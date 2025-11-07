if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_left))
    {
        if(image_index == 0)
        {
            with(obj_customRushController)
            {
                event_user(3);
            }
        }
        else
        {
            with(obj_customRushController)
            {
                event_user(4);
            }
            image_index = 0;
        }
    }
}

