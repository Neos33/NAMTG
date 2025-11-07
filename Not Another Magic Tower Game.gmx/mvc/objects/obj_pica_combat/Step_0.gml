if(start && !die)
{
    if(!FMODInstanceGetPaused(scrAudioGetID("BGM_Pica")) && player_is_alive() && complete)
    {
        die = true;
        hp = 0;
        audio_playsound(sndDeath);
        if(!global.GalleryBossFight)
        {
            global.TotalKills += 1;
        }
        alarm[2] = 1;
    }
}

