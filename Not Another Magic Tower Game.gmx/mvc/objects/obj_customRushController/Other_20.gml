player.frozen = true;
cCount = 0;
global.ChallengeSetIndex = challengeId;
if(!global.csOrder[challengeId])
{
    global.csOrder[challengeId] = ds_list_create();
}
else
{
    cCount = ds_list_size(global.csOrder[challengeId]);
}

for(var i=0;i<cCount;i+=1)
{
    imgIndex = ds_list_find_value(global.csOrder[challengeId],i);
    
    cardX = 657 + ((i mod 2) - 0.5) * 140;
    cardY = 160 + 176 * floor(i/2);
    with(instance_create(cardX,cardY,obj_galleryBrCRCard))
    {
        ind = i;
        image_index = other.imgIndex;
    }
}


if(cCount > 0)
{
    acceptableHits = global.CustomBrHits;
}
else
{
    acceptableHits = 6;
}

with(obj_customRushCards)
{
    if(ds_list_find_index(global.csOrder[other.challengeId], image_index) >= 0)
    {
        if(ind == other.currentInd)
        {
            obj_galleryBrSelect.image_index = 1;
        }
        selected = true;
    }
}
event_user(12);



