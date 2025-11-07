if player_is_alive()
    player.frozen = 1
//instance_deactivate_object(obj_superFasf_combat);
instance_create(0,0,black5)
SS_StopAll();
sound_stop_all()
//sound_fix(luka);
global.currentBGM = scrAudioGetID("BGM_Luka");

audio_playmusic_volume(scrAudioGetID("BGM_Luka"));



