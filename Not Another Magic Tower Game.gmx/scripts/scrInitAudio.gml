//scrInitAudio();

global.NAMTG_BGM = ds_map_create();

global.music_directory = "BGM\";
global.stream_music = 0;

globalvar BGM_Null;
BGM_Null=FMODSoundAdd(global.music_directory+"Null.ogg",0,0);
//current music, set it to BGM_Null for default value
globalvar curMusic;
curMusic = -1;
globalvar curMusicID;
curMusicID = BGM_Null;
globalvar deathMusic;
deathMusic = -1;

globalvar currentBGM;
currentBGM = curMusicID;
