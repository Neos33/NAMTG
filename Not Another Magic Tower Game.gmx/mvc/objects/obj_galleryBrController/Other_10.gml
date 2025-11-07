player.frozen = true;
cCount = challengeSetMembersCount[challengeId];
global.GalleryBossFightNum  = cCount;
global.ChallengeSetIndex = challengeId;
if(!global.csOrder[challengeId])
{
    global.csOrder[challengeId] = ds_list_create();
    for(var i=0;i<cCount;i+=1)
    {
        ds_list_add(global.csOrder[challengeId], challengeSetMemberId[challengeId, i]);
    }
}
draw = true;
sprWidth = sprite_get_width(spr_brCards)*0.7;
with(instance_create(mouse_x,mouse_y,obj_galleryBrMouseControl))
{
    alarm[0] = 50;
}
with(instance_create(335, 480, obj_galleryBrStart))
{
    alarm[0] = 50;
}
with(instance_create(465, 480, obj_galleryBrCancel))
{
    alarm[0] = 50;
}
for(var i=0;i<cCount;i+=1)
{
    imgIndex = ds_list_find_value(global.csOrder[challengeId],i);
    with(instance_create(400-(cCount/2-i-0.5)*(sprWidth+20),304,obj_galleryBrCard))
    {
        image_index = other.imgIndex;
        alarm[0] = 30 + i * 15;
    }
}
//instance_create(x,y,obj_galleryBrSelectionDrawer);


