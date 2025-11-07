//index - 0  name - first blood
if(!global.achievements[0])
{
    if(global.death[global.savenum] > 0 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 0;
        global.achievements[0] = 1;
    }
}

//index - 1  name - Hundred Deaths
if(!global.achievements[1])
{
    if(global.death[global.savenum] >= 100 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 1;
        global.achievements[1] = 1;
    }
}

//index - 2  name - Almost Thousand
if(!global.achievements[2])
{
    if(global.death[global.savenum] >= 999 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 2;
        global.achievements[2] = 1;
    }
}

//index - 3  name - You are the death
if(!global.achievements[3])
{
    if(global.death[global.savenum] >= 4444 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 3;
        global.achievements[3] = 1;
    }
}

//index - 4  name - Monster Killer
if(!global.achievements[4])
{
    if(global.TotalKills > 0 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 4;
        global.achievements[4] = 1;
    }
}

//index - 5  name - The Begining
if(!global.achievements[5])
{
    if(global.maxFloor > 0 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 5;
        global.achievements[5] = 1;
    }
}


//index - 5  name - The Begining
if(!global.achievements[7])
{
    if(global.currentLevel >= 1 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 7;
        global.achievements[7] = 1;
    }
}


//index - 13 
if(!global.achievements[13])
{
    if((global.attack - global.defense) >= 50 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 13;
        global.achievements[13] = 1;
    }
}


//index - 14
if(!global.achievements[14])
{
    if((global.defense - global.attack) >= 5 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 14;
        global.achievements[14] = 1;
    }
}


//index - 15
if(!global.achievements[15])
{
    if(global.special[0] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 15;
        global.achievements[15] = 1;
    }
}


//index - 16
if(!global.achievements[16])
{
    if(global.special[1] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 16;
        global.achievements[16] = 1;
    }
}

//index - 17
if(!global.achievements[17])
{
    if(global.special[2] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 17;
        global.achievements[17] = 1;
    }
}

//index - 18
if(!global.achievements[18])
{
    if(global.special[3] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 18;
        global.achievements[18] = 1;
    }
}

//index - 53
if(!global.achievements[53])
{
    if(global.special[4] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 53;
        global.achievements[53] = 1;
    }
}

//index - 56
if(!global.achievements[56])
{
    if(global.special[5] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 56;
        global.achievements[56] = 1;
    }
}

//index - 59
if(!global.achievements[59])
{
    if(global.special[6] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 59;
        global.achievements[59] = 1;
    }
}

//index - 62
if(!global.achievements[62])
{
    if(global.special[7] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 62;
        global.achievements[62] = 1;
    }
}

//index - 64
if(!global.achievements[64])
{
    if(global.special[8] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 64;
        global.achievements[64] = 1;
    }
}

//index - 65
if(!global.achievements[65])
{
    if(global.currentFloor >= 11 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 65;
        global.achievements[65] = 1;
    }
}

//index - 89
if(!global.achievements[89])
{
    if(global.hp >= 1000 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 89;
        global.achievements[89] = 1;
    }
}

//index - 90
if(!global.achievements[90])
{
    if(global.currentLevel == 11 && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 90;
        global.achievements[90] = 1;
    }
}

//91,92,93
if(!global.achievements[91])
{
    if(global.special[11] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 91;
        global.achievements[91] = 1;
    }
}

if(!global.achievements[92])
{
    if(global.special[12] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 92;
        global.achievements[92] = 1;
    }
}

if(!global.achievements[93])
{
    if(global.special[13] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 93;
        global.achievements[93] = 1;
    }
}

//95
if(!global.achievements[95])
{
    if(room == rFinalCorridor && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 95;
        global.achievements[95] = 1;
    }
}


//78
if(!global.achievements[78])
{
    if(global.dynamiteNum > 0  && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 78;
        global.achievements[78] = 1;
    }
}

//index - 103
if(!global.achievements[103])
{
    if(global.special[16] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 103;
        global.achievements[103] = 1;
    }
}

//index - 108
if(!global.achievements[108])
{
    if(global.special[18] && !instance_exists(obj_achievements))
    {
        ch = instance_create(aStartX,aStartY,obj_achievements);
        ch.index = 108;
        global.achievements[108] = 1;
    }
}

