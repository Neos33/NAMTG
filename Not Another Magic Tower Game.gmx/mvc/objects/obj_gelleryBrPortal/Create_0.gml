image_speed = 1/3;
acceptableHits = 0;
setName = "";
rushInd = 0;

if(rushInd != 9)
{    
    if(global.BR_Status == 1 && global.GalleryBRChallengeId == rushInd && !global.challengeSets[rushInd])
    {
        global.challengeSets[rushInd] = 1;
        instance_create(x, y - 40, obj_appearEffect);
        alarm[1] = 30;
    }
    else if(global.challengeSets[rushInd] && !global.challengeRewards[rushInd])
    {
        instance_create(x, y - 40, obj_appearEffect);
        alarm[1] = 30;
    }
    
    with(instance_create(x, y-40, obj_galleryBrStatus))
    {
        ind = other.rushInd;
    }
    
    if(global.challengeSets[rushInd])
    {
        image_blend = c_green;
    }
    else
    {
        image_blend = c_red;
    }
}
else
{
    for(var i=-1;i<=1;i+=1)
    {
        with(instance_create(x+48*i,y-60,obj_galleryBrStatus))
        {
            ind = 9;
            subInd = i + 1;
            cPoints = 35 + 10*i;
        }
    }
}
image_xscale = 1.5;
image_yscale = 1.5;
y -= 12;
alarm[0] = 1;




