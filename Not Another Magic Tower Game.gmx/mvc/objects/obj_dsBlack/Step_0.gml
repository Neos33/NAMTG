if(!sound_isplaying(sndQuake))
{
    sound_play(sndQuake);
}
__view_set( e__VW.XView, 0, random_range(-3,3) );
__view_set( e__VW.YView, 0, random_range(-3,3) );

