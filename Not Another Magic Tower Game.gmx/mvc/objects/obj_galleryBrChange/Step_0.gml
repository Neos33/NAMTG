if(!instance_exists(obj_galleryBrCRCard))
{
    image_alpha = 0;
    start = false;
}
else
{
    image_alpha = 1;
    start = true;
}

if(start)
{
    if(place_meeting(x,y,obj_galleryBrMouseControl1))
    {
        if(mouse_check_button_pressed(mb_left))
        {
            aNum = get_integer("Set an acceptable hit num:", obj_customRushController.acceptableHits);
            if(aNum < 0)
            {
                show_message("Invalid number.");
            }
            else
            {
                with(obj_customRushController)
                {
                    acceptableHits = other.aNum;
                    selectedCount = instance_number(obj_galleryBrCRCard);
                    if(selectedCount == 4)
                    {
                        hitOffset = (8 - acceptableHits) * 3;
                    }
                    else
                    {
                        hitOffset = (6 - acceptableHits) * 3;
                    }
                }
            }
        }
    }
}

