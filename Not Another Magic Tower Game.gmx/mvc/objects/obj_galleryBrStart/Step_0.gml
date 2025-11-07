if(keyboard_check_pressed(global.jumpbutton))
{
    if(!start)
    {
        start = true;
        obj_galleryBrMouseControl.start = true;
        obj_galleryBrCancel.start = true;
        obj_galleryBrCard.alarm[0] = 1;
    }
    else
    {
        with(obj_galleryBrController)
        {
            event_user(1);
        }
    }
}
if(!start) exit;
if(place_meeting(x,y,obj_galleryBrMouseControl))
{
    if(mouse_check_button_pressed(mb_left))
    {        
        with(obj_galleryBrController)
        {
            event_user(1);
        }
    }
}


