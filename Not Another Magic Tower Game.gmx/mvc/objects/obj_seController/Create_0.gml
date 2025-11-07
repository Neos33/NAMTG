SS_StopAll();
__background_set( e__BG.Blend, 0, make_color_rgb(168,168,168) );
audio_playmusic_volume(scrAudioGetID("BGM_SE"));
global.currentBGM = scrAudioGetID("global.BGM_SE");
black = instance_create(0,0,obj_seBlack);
black.alpha = 1;
black.alarm[1] = 50;
vhspd = 1;

alarm[0] = 200;
alarm[1] = 380;
alarm[2] = 530;
alarm[3] = 680;
alarm[4] = 860;
alarm[5] = 950;
alarm[6] = 1050;
alarm[7] = 1800;
alarm[8] = 3450;
alarm[10] = 13650;
alarm[11] = 14300;

with(instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - sprite_width / 2 - 24,__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 48, obj_skipInfo))
{
    image_xscale = 1.5;
    image_yscale = 1.5;
}


