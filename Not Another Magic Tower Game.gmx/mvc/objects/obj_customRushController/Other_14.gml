selectedCount = instance_number(obj_galleryBrCRCard);

if(selectedCount == 4)
{
    if(acceptableHits > 2)
    {
        acceptableHits -= 2;
    }
    else
    {
        acceptableHits = 0;
    }
}

with(obj_customRushCards)
{
    if(ind == other.currentInd)
    {
        other.removeInd = image_index;
        selected = false;
    }
}
with(obj_galleryBrCRCard)
{
    if(image_index == other.removeInd)
    {
        other.removeCardInd = ind;
        instance_destroy();
    }
}
with(obj_galleryBrCRCard)
{
    if(ind > other.removeCardInd)
    {
        ind -= 1;
    }
}
delPos = ds_list_find_index(global.csOrder[challengeId], removeInd);
ds_list_delete(global.csOrder[challengeId], delPos);

event_user(12);

