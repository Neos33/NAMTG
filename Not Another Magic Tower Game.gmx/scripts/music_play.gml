///music_play(music);

var _music_name = argument[0];
var _music = scrAudioGetID(_music_name);


// Apply music
global.current_bgm_id = _music_name;
global.current_bgm = FMODSoundLoop(_music, false);
