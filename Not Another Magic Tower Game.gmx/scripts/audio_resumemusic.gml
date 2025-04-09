///audio_resumemusic(music)
//
//  resumes the current music using global music volume
//
//      music         the music to resume
//
//
{
    if !global.audio_music_muted{
        if FMODInstanceGetPaused(curMusic)
        {
            //FMODInstanceSetVolume(curMusic, global.audio_music_volume/100);
            FMODInstanceSetPaused(curMusic, false);
        }
    }
}

/*
var music;
music=argument0;
if !global.audio_music_muted{
    if !SS_IsSoundPlaying(music){
        SS_SetSoundVol(music,2000+80*global.audio_music_volume);
        SS_ResumeSound(music);
    }
}
