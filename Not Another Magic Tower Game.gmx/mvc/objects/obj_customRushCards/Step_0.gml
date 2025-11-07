if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_left))
    {
        if(ind == obj_customRushController.currentInd)
        {
            if(!selected)
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
                obj_galleryBrSelect.image_index = 0;
            }
        }
    }
}

