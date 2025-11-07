global.skipable = true;
instance_create(__view_get( e__VW.XView, 0 ) + sprite_get_width(spr_skipInfo) / 2 + 5, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - sprite_get_height(spr_skipInfo) / 2, obj_skipInfo);
if(!global.story[23])
{
    message_add("Diao Slime : It's respectable that you've reached here. ");
    message_add("Kid : So you are the evil essence? ");
    message_add("Diao Slime : That's why I looks so DIAO. ");
    message_add("Kid : ... ");
    message_add("Kid : You are different. Who are you three b6.");
    message_add("??? : ...");
    message_add("??? : Hah, seems camouflage is no longer needed.");
    player.vspeed = 0;
    FMODInstanceSetPaused(global.curMusic, true);
    global.currentBGM = scrAudioGetID("BGM_Null");
    alarm[0] = 10;
    player.frozen = true;
    global.story[23] = true;
}


