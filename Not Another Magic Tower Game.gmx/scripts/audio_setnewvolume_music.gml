add_volume = argument0

//volume down

if add_volume < 0 and global.audio_music_volume > 0 {
    global.audio_music_volume += add_volume ; 
    audio_update();
}

//volume up

if add_volume > 0 and global.audio_music_volume < 100 {
    global.audio_music_volume += add_volume ;
    audio_update();
}
