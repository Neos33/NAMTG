if(!is_message())
{
    message_add("Kid : AHHHHHHHHHhhhhhhHHHHHHHHHHHhhhhhhhhhhhhhhhhHHHHHHHHHHHHHHHHhhhhhhhhhhhhHhHHhHHhHHhhHHhhHhhHHhHHhHH!!!!!!");
    //audio_playmusic_volume(scrAudioGetID("SE_KidScream"));
    FMODSoundPlay(scrAudioGetID("SE_KidScream"), false);
    alarm[7] = 1;
}
else
{
    alarm[8] = 1;
}

