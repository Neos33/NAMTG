/// @description  Back from avoidance room - Volume
//SS_SetSoundVol(global.BGMsupfasf,volume)
//FMODInstanceSetVolume(scrAudioGetID("BGMsupfasf"), volume / 10000);
FMODInstanceSetVolume(global.current_battle_bgm, volume / 10000);
if(volume<=10000)
{
    volume+=1000;
    alarm[10]=2;
}

