SS_StopAll();
audio_playmusic_volume(scrAudioGetID("BGM_Corridor"));
global.currentBGM = scrAudioGetID("BGM_Corridor");
alpha = 1;
alarm[0] = 1;
__view_set( e__VW.XView, 0, 288 );
__view_set( e__VW.YView, 0, 608 );
alarm[2] = 2;

