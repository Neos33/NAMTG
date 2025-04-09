///audio_loopmusic(music)
//
//  loops the music using global music volume
//
//      music         the music to loop
//
//
{
    if(curMusicID != argument0 and !global.audio_music_muted){
        FMODInstanceStop(curMusic);
        curMusicID = argument0;
        if !global.audio_music_muted{
            if !FMODInstanceIsPlaying(curMusic){
                curMusic = FMODSoundLoop(curMusicID, false);
                FMODInstanceSetVolume(curMusic, global.audio_music_volume/100 * 0.35);
                //show_debug_message("Se reproduce la musica?")
            }
        }
    }
}


/*
var music;
music=argument0;
if !global.audio_music_muted{
    if !SS_IsSoundPlaying(music){
        SS_SetSoundVol(music,2000+80*global.audio_music_volume);
        SS_LoopSound(music);
    }
}
