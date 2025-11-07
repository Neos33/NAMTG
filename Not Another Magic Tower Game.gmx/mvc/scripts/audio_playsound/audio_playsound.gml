
var sound = argument0;
var sound_default_volume;
switch(sound){
    case sndBossHit: sound_default_volume = 0.75; break;
    case sndBlockChange: sound_default_volume = 0.85; break;
    case sndDeath:
    case sndSpikeTrap:
    case sndgras: sound_default_volume = 0.9; break;
    case sndbrake: sound_default_volume = 0.93; break;
    default: sound_default_volume = 1;
}
//if !global.audio_sound_muted{
    sound_volume(sound,sound_default_volume*(0.3+0.007*global.audio_sound_volume));
    sound_stop(sound);
    sound_play(sound);
//}
