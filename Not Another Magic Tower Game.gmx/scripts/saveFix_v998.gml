if(global.maxFloor < 15)
{
    global.monsters[300] = false;
}
if(global.maxFloor < 16)
{
    for(i = 301; i <= 304; i+=1)
    {
        global.monsters[i] = false;
    }
}
if(global.maxFloor < 17)
{
    for(i = 305; i <= 308; i+=1)
    {
        global.monsters[i] = false;
    }
}
if(global.maxFloor < 18)
{
    for(i = 309; i <= 317; i+=1)
    {
        global.monsters[i] = false;
    }
}

if(!global.story[37])
{
    global.monsters[317] = false;
}

if(!global.SpaceItems[3])
{
    global.monsters[318] = false;
}

if(!global.achievements[97] || !global.ironDoors[2] || !global.special[12])
{
    global.MaxChallengePoints = 0;
    for(i=0; i < 10; i+=1)
    {
        global.challengeSets[i] = 0;
    }
}
