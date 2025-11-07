//global.test = SS_GetSoundPosition(global.BGM_Faro);

step += 1;


if(!appear && !blinkDisabled)
{
    if(step == blinkTime)
    {
        alarm[4] = 1;
        alarm[5] = 0;
        blinkCount += 1;
        if(blinkCount < bCount)
        {
            blinkTime = bTime[blinkCount];
        }
        else
        {
            alarm[6] = 1;
            alarm[4] = 0;
            alarm[5] = 0;
        }
    }
}

