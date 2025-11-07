SS_StopAll();
sound_stop_all();
audio_playmusic_volume(scrAudioGetID("BGM_DemonLead"));
//global.currentBGM = global.BGM_DemonLead;
global.currentBGM = scrAudioGetID("BGM_DemonLead")
//global.curMusic = scrAudioGetID("BGM_DemonLead");
if(global.part == 1)
{
    FMODInstanceSetPosition(scrAudioGetID("BGM_DemonLead"), 8666536); //to monster room
}
else if(global.part == 2)
{
    room_goto(rDemonLeadMonsters);
    FMODInstanceSetPosition(scrAudioGetID("BGM_DemonLead"), 19038852);
}
else if(global.part == 3)
{
    room_goto(rDemonLeadTouhou);
    FMODInstanceSetPosition(scrAudioGetID("BGM_DemonLead"), 24708352);
    currentStep = 54;
}
else if(global.part == 4)
{
    room_goto(rDemonLeadFinalPhase);
    FMODInstanceSetPosition(scrAudioGetID("BGM_DemonLead"), 33533648);
    currentStep = 54;
}

