var monsterPercentage, specialPercentage,
    mKilled, achCount, extraBubbleStar, extraJKStar;

global.totalPercentage = 0;
monsterPercentage = 0.4;
achievementPercentage = 0.25;
specialPercentage = 0.15;
extraPercentage = 0.2;

mKilled = 0;
achCount = 0;
extraBubbleStar = 0;
extraJKStar = 0;

for(i = 0; i < 200; i += 1)
{
    if(i != 4 && i != 144 && i != 156)
    {
        if(global.monsters[i])
        {
            mKilled += 1;
        }
    }  
}

global.totalPercentage += mKilled / 200 * monsterPercentage;

for(i = 0; i < 65; i += 1)
{
    if(global.achievements[i])
    {
        achCount += 1;
    }
}
global.totalPercentage += achCount / 65 * achievementPercentage;

if(global.monsters[96])
{
    global.totalPercentage += 0.01;
}
if(global.monsters[73])
{
    global.totalPercentage += 0.02;
}
if(global.greenKeys[2])
{
    global.totalPercentage += 0.01;
}
if(global.monsters[202])
{
    global.totalPercentage += 0.01;
}
if(global.story[25])
{
    global.totalPercentage += 0.04;
}
for(i = 2; i < 8; i += 1)
{
    if(global.special[i])
    {
        global.totalPercentage += 0.01;
    }
}

for(i = 0; i < 10; i += 1)
{
 extraBubbleStar += global.bubbleStageStar[i];
}
global.totalPercentage += extraBubbleStar / 30 * 0.05;

for(i = 0; i < 10; i += 1)
{
 extraJKStar += global.ExtraJkStar[i];
}
global.totalPercentage += extraJKStar / 30 * 0.05;

if(global.hpUp[196])
{
    global.totalPercentage += 1 / 6 * 0.05;
}
if(global.hpUp[200])
{
    global.totalPercentage += 1 / 6 * 0.05;
}
if(global.hpUp[202])
{
    global.totalPercentage += 1 / 6 * 0.05;
}
if(global.blueKeys[22])
{
    global.totalPercentage += 1 / 6 * 0.05;
}
if(global.hpUp[204])
{
    global.totalPercentage += 1 / 6 * 0.05;
}
if(global.defUp[61])
{
    global.totalPercentage += 1 / 6 * 0.05;
}

if(global.mmmHighScore >= 1200)
{
    global.totalPercentage += 5 / 5 * 0.05;
}
else if(global.mmmHighScore >= 1000)
{
    global.totalPercentage += 4 / 5 * 0.05;
}
else if(global.mmmHighScore >= 750)
{
    global.totalPercentage += 3 / 5 * 0.05;
}
else if(global.mmmHighScore >= 500)
{
    global.totalPercentage += 2 / 5 * 0.05;
}
else if(global.mmmHighScore >= 250)
{
    global.totalPercentage += 1 / 5 * 0.05;
}

