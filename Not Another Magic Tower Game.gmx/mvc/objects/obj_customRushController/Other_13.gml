selectedCount = instance_number(obj_galleryBrCRCard);
if(selectedCount >= 4) 
{
    show_message("You cannot add more!");
}
else
{
    with(obj_customRushCards)
    {
        if(ind == other.currentInd)
        {
            other.addInd = image_index;
            selected = true;
        }
    }
    if(selectedCount == 3)
    {
        acceptableHits += 2;
    }
    
    cardX = 657 + ((selectedCount mod 2) - 0.5) * 140;
    cardY = 160 + 176 * floor(selectedCount/2);
    with(instance_create(cardX,cardY,obj_galleryBrCRCard))
    {
        ind = other.selectedCount;
        image_index = other.addInd;
    }
    ds_list_add(global.csOrder[challengeId], addInd);
    obj_galleryBrSelect.image_index = 1;
    
    event_user(12);
}

