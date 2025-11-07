cName = "";
setName = obj_galleryBrController.challengeSetName[rushInd];
bossCount = obj_galleryBrController.challengeSetMembersCount[rushInd];
for(var i=0;i<bossCount;i+=1)
{
    bossInd[i] = obj_galleryBrController.challengeSetMemberId[rushInd, i];
    bossName[i] = obj_galleryBrController.bossName[bossInd[i]];
    if(cName != "")
    {
        cName += " +";
    }
    cName += bossName[i];
}
acceptableHits = obj_galleryBrController.challengeSetHits[rushInd];
info = obj_galleryBrController.challengeSetRewardInfo[rushInd];

msg[0] = "Challenge Info : " + setName + " - " + cName + "#Acceptable Hits - " + string(acceptableHits) + "(" + string(acceptableHits+1) + ")#Rewards - " + info;
msgLength = 1;

