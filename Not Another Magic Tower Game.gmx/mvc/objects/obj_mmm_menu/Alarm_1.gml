step = 2;
medals = 0;
for(var i = 0; i < 4; i+=1)
{
    medals += global.mmmMedals[i];
}

if(medals >= 30)
{
    if(!global.achievements[60])
    {
        ch = instance_create(0,608,obj_achievements);
        ch.index = 60;
        global.achievements[60] = 1;
    }
}



