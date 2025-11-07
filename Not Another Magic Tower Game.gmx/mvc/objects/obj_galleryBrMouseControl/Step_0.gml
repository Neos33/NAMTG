x = mouse_x;
y = mouse_y;
if(!start) exit;
if(place_meeting(x,y,obj_galleryBrCard))
{
    window_set_cursor(cr_handpoint);
}
else
{
    window_set_cursor(cr_default);
}

if(mouse_check_button_released(mb_left))
{
    if(target)
    {
        with(target)
        {
            if(place_meeting(x,y,obj_galleryBrCard))
            {
                event_user(0);
            }
            else
            {
                x = ox;
                y = oy;
            } 
            targeted = false;
        }
        target = noone;
    }
}

