totalPoints = 0;
listCount = ds_list_size(global.csOrder[global.ChallengeSetIndex]);
for(var i=0;i<listCount;i+=1)
{
    tInd = ds_list_find_value(global.csOrder[global.ChallengeSetIndex], i);
    totalPoints += bossPoints[tInd, i];
}
if(listCount == 4)
{
    defaultHits = 8;   
}
else
{
    defaultHits = 6;
}

hitOffset = (defaultHits - acceptableHits)*3;

