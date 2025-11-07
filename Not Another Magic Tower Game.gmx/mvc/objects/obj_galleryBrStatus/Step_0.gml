if(start) exit;

start = true;
if(ind < 9)
{
    if(global.challengeSets[ind])
    {
        sprite_index = spr_galleryBrStatus2;
    }
    else
    {
        sprite_index = spr_galleryBrStatus1;
    }
}
else
{
    if(global.MaxChallengePoints < cPoints)
    {
        sprite_index = spr_galleryBrStatus1;
    }
    else
    {
        sprite_index = spr_galleryBrStatus2;
        if(!global.CCItem[subInd])
        {
            switch(subInd)
            {
                case 0: rewardObj = obj_dynamite_x3;break;
                case 1: rewardObj = obj_energyAmplifier;break;
                case 2: rewardObj = obj_saintShield;break;
                default: break;
            }
            instance_create(x,y+16,rewardObj);
        }
    }
}

