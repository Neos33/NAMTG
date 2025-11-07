/// @description  Music loaded
globalvar currentBGM;
//global.currentBGM = global.BGM_1;

show_debug_message("BGM load finished.");
show_debug_message("------------------------------------------------------");
global.currentBGM = global.NAMTG_BGM[? "BGM_1"];
instance_create(768, 560, obj_start);

