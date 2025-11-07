var monsterPercentage, specialPercentage, totalMonsterCount, specialCount, specialComplete, spaceItems, clearItemCount, clearItemComplete, storyCount, storyComplete, floorCount, floorComplete,
    mKilled, achCount, extraBubbleStar, extraJKStar, spaceItems, challengeCount, cChallenge;
    
monsterPercentage = 0.4;
achievementPercentage = 0.25;
specialPercentage = 0.15;
extraPercentage = 0.2;

mKilled = 0;
achCount = 0;
extraBubbleStar = 0;
extraJKStar = 0;
totalMonsterCount = 317;
specialCount = 0;
specialComplete = 0;
spaceItems = 0;
clearItemCount = 0;
clearItemComplete = 0;
storyCount = 4; 
storyComplete = 0; 
storyPer = 0;
floorCount = 6;
floorComplete = 0;

for(var i = 0; i < 319; i += 1)
{
    /*if(i != 4 && i != 144 && i != 156)
    {
        if(global.monsters[i])
        {
            mKilled += 1;
        }
        totalMonsterCount += 1;
    }*/
    mKilled += global.monsters[i];
}

//mPer monster percentage  50% story
mPer = mKilled / totalMonsterCount;


//storyList 50% story
for(var i = 0; i < 19; i += 1)
{
    if(global.special[i])
    {
        specialComplete += 1;
    }
    specialCount += 1;
}

for(var i = 0; i < 10; i += 1)
{
    if(global.clearItem[i])
    {
        clearItemComplete += 1;
    }
    clearItemCount += 1;
}

if(global.story[25])
{
    storyComplete += 1;
}
if(global.story[32])
{
    storyComplete += 1; 
}
if(global.story[38])
{
    storyComplete += 1; 
}
if(global.monsters[317])
{
    storyComplete += 1; 
}

storyPer = mPer * 0.5 + (specialComplete + clearItemComplete + storyComplete)/(specialCount + clearItemCount + storyCount) * 0.5;

for(i = 0; i < 106; i += 1)
{
    if(global.achievements[i])
    {
        achCount += 1;
    }
}

//aPer achievement percentage
aPer = achCount / 106;

if(abs(1-aPer) < 0.001)
{
    aPer = 1;
}


sPer = (specialComplete + clearItemComplete)/(specialCount + clearItemCount);

for(var i = 0; i < 10; i += 1)
{
 extraBubbleStar += global.bubbleStageStar[i];
}

for(var i = 0; i < 10; i += 1)
{
 extraJKStar += global.ExtraJkStar[i];
}

for(var i = 0; i < 10; i +=1)
{
 spaceItems += global.SpaceItems[i];
}

if(global.hpUp[196])
{
    floorComplete += 1;
}
if(global.hpUp[200])
{
    floorComplete += 1;
}
if(global.hpUp[202])
{
    floorComplete += 1;
}
if(global.blueKeys[22])
{
    floorComplete += 1;
}
if(global.hpUp[204])
{
    floorComplete += 1;
}
if(global.defUp[61])
{
    floorComplete += 1;
}

oPer =  extraBubbleStar / 30 * 0.225
        + extraJKStar / 30 * 0.225
        + floorComplete/floorCount*0.225 
        + RangeClamp(global.mmmHighScore/1200,0,1)*0.225
        + spaceItems / 10 * 0.1;

challengeCount = 0; 
cChallenge = 0; 
for(var i=0;i<9;i+=1)
{
    challengeCount += global.challengeSets[i];
}
for(var i = 0; i < 3; i+=1)
{
    cChallenge += global.CCItem[i];
}
cPer = challengeCount/9 * 0.7 + cChallenge/3*0.3;
if(abs(1-cPer) < 0.001)
{
    cPer = 1;
}

/* */
/*  */
