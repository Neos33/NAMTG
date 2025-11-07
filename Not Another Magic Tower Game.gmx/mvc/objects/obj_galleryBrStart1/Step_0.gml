cardNum = instance_number(obj_galleryBrCRCard);
if(cardNum == 0) 
{
    image_alpha = 0;
    start = false;
    exit;
}
else
{
    image_alpha = 1;
}
if(cardNum < 3)
{
    image_index = 1;
    start = false;
}
else
{
    image_index = 0;
    start = true;
}

if(keyboard_check_pressed(global.jumpbutton))
{
    if(ds_list_size(global.csOrder[global.ChallengeSetIndex]) < 3)
    {
        show_message("You need at least select 3 bosses.");
    }
    else
    {
        with(obj_customRushController)
        {
            event_user(11);
        }
    }
}

if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_left))
    {        
        if(ds_list_size(global.csOrder[global.ChallengeSetIndex]) < 3)
        {
            show_message("You need at least select 3 bosses.");
        }
        else
        {
            with(obj_customRushController)
            {
                event_user(11);
            }
        }
    }
}


