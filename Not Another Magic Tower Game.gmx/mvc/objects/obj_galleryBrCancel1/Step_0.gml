cardNum = instance_number(obj_galleryBrCRCard);
if(cardNum == 0)
{
    image_alpha = 0;
    start = false;
}
else
{
    image_alpha = 1;
    start = true;
}


if(keyboard_check_pressed(global.shotbutton))
{
    event_user(0);
}

if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_left))
    {
        event_user(0);
    }
}

