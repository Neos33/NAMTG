i = 0;
aa = 0;
ab = 0;
ac = 0;
j = 0;
k = 0;

spdd = 0;
dir = 0;

flag = 0;

volume = 0;

animation = 0;

ach = 0;

event_inherited();
name = "SUPER FASF!!!";
image_speed =0;
image_xscale=3;
image_yscale=3;
image_alpha=0.1;
flag=0;
x=400;
y=200;

//sound_loop(fasf_battle_music);
//audio_loopmusic_volume(scrAudioGetID("BGMsupfasf"));
music_play_battle("BGMsupfasf");
//sound_stop_all();


alarm[3]=100; //orginal 150;
volume=10000;
//SS_SetSoundVol(global.BGMsupfasf,volume);
//FMODInstanceSetVolume(scrAudioGetID("BGMsupfasf"),volume / 10000);
FMODInstanceSetVolume(global.current_battle_bgm, volume / 10000);
animation=1;

