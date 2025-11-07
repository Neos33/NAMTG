if(place_meeting(x,y,obj_galleryBrMouseControl1))
{
    if(mouse_check_button_pressed(mb_right))
    {
        myInd = ind;
        with(obj_customRushCards)
        {
            if(image_index == other.image_index)
            {
                selected = false;
            }
        }
        with(obj_galleryBrCRCard)
        {
            if(ind > other.myInd)
            {
                ind -= 1;
            }
        }
        with(obj_customRushController)
        {
            selectedCount = instance_number(obj_galleryBrCRCard);
            if(selectedCount == 4)
            {
                acceptableHits -= 2;
            }
            event_user(0);
        }
        myPos = ds_list_find_index(global.csOrder[global.ChallengeSetIndex], image_index);
        //if(myPos == -1)
        //{
        //    show_message("Card not exists");
        //}
        ds_list_delete(global.csOrder[global.ChallengeSetIndex], myPos);
        with(obj_customRushController)
        {
            event_user(12);
        }
        instance_destroy();
    }
    
    if(mouse_check_button_pressed(mb_left))
    {
        targeted = true;
    }
    
    if(mouse_check_button_released(mb_left))
    {
        if(target)
        {
            event_user(0);
            with(obj_customRushController)
            {
                event_user(12);
            }
        }
        else
        {
            x = ox;
            y = oy;
        }
        targeted = false;
    }
}

x = 657 + ((ind mod 2) - 0.5) * 140;
y = 160 + 176 * floor(ind/2);

if(targeted)
{
    x = mouse_x;
    y = mouse_y;
    depth = -10002;
}
else
{
    depth = -10000;
}

if(!place_meeting(x,y,obj_galleryBrCRCard))
{
    image_blend = c_white;
    target = noone;
}

