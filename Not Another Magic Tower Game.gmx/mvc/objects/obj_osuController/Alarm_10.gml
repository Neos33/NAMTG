//SS_SetSoundPosition(global.BGM_Faro,19966720);
//time = 5701;
//room_goto(rFaroSideTower);
//alarm[5]=1;
if(global.testPhase > 0)
{
    obj_faro_combat.alarm[4] = 0;
    obj_faro_combat.alarm[5] = 0;
    obj_faro_combat.image_alpha = 0;
    obj_faro_combat.blinkDisabled = true;
    time = global.testStep[global.testPhase];
    if(global.testPhase == 5)
    {
        start = true;
        mode = 1;
    }
    else if(global.testPhase == 8)
    {
        start = true;
        mode = 2;
    }
    //SS_SetSoundPosition(global.BGM_Faro,global.testPos[global.testPhase]);
    FMODInstanceSetPosition(scrAudioGetID("BGM_Faro"), global.testPos[global.testPhase]);
    if(room != global.testRoom[global.testPhase])
    {
        room_goto(global.testRoom[global.testPhase]);
    }  
}
if(global.testStep[global.testPhase] < 1350)
{
    alarm[11] = 1350 - global.testStep[global.testPhase];
}


