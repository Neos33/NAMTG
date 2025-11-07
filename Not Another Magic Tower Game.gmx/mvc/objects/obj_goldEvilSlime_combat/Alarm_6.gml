sound_stop_all();
music_stop_battle();
music_evolving = FMODSoundPlay(scrAudioGetID("BGM_Battle2PokemonB"), false);
//sound_play(sndEvolve);
instance_create(0,0,obj_goldEvilSlimeWhite);
with(obj_pokemonBattleDialog)
{
    msg = "Wait! " + other.name + " looks strange..";
    event_user(0);
}
player.frozen = true;
alarm[7] = 100;

