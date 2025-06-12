///music_play_battle(music);

var _music_name = argument[0];
var _music = scrAudioGetID(_music_name);


// Apply music
global.current_battle_bgm_id = _music_name;
global.current_battle_bgm = FMODSoundLoop(_music, false);
