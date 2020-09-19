///audio_playmusic(music)
//
//  plays the music using global music volume
//
//      music         the music to play
//
//
{
    if(curMusicID != argument0 and !global.audio_music_muted){
        FMODInstanceStop(curMusic);
        curMusicID = argument0;
        if !global.audio_music_muted{
            if !FMODInstanceIsPlaying(curMusic){
                curMusic = FMODSoundPlay(curMusicID,0);
                FMODInstanceSetVolume(curMusic,global.audio_music_volume/100);
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
        SS_PlaySound(music);
    }
}
