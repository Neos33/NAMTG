///initializing music at the beginning of the game
//initialize fmod system
LoadFMOD();
FMODinit(100,0);
//indicates that no music will be playing in the room
//DO NOT DELETE THIS ONE
BGM_Null=FMODSoundAdd(global.music_directory+"null.ogg",0,0);
//current music, set it to BGM_Null for default value
globalvar curMusic;
curMusic = -1;
globalvar curMusicID;
curMusicID = BGM_Null;
globalvar deathMusic;
deathMusic = -1;
//the death sound, the volume of which is adjusted by the global sound volume
globalvar SE_Death;
SE_Death=music_load("death.ogg");

globalvar BGM_Title;
BGM_Title=music_load("001.ogg");

globalvar BGM_1;
BGM_1=music_load("002.ogg");

globalvar BGM_BOSS1;
BGM_BOSS1=music_load("101.ogg");

globalvar BGM_BOSS2;
BGM_BOSS2=music_load("102.ogg");

//add your code here


/*
globalvar curMusic,filePlaying; //current music, current music serial, ~~~

globalvar SE_Death;
SE_Death=SS_LoadSound(working_directory+"\BGM\Death.ogg",0);

// play music full edition
globalvar BGM_Null;
BGM_Null=SS_LoadSound(working_directory+"\BGM\Null.ogg",0);

//globalvar BGM_Title;
//BGM_Title=SS_LoadSound(working_directory+"\BGM\BGM1.ogg",0);

globalvar BGM_1;
BGM_1=SS_LoadSound(working_directory+"\BGM\BGM1.ogg",0);

globalvar BGM1To10F;
BGM1To10F=SS_LoadSound(working_directory+"\BGM\BGM1-10F.ogg",0);

globalvar BGMB1F;
BGMB1F = SS_LoadSound(working_directory+"\BGM\BGMB1F.ogg",0);

globalvar BGMSecret1;
BGMSecret1=SS_LoadSound(working_directory+"\BGM\BGM_Secret1.ogg",0);

globalvar BGMsupfasf;
BGMsupfasf=SS_LoadSound(working_directory+"\BGM\BGM_battle1.ogg",0);

globalvar BGMBoss1; 
BGMBoss1=SS_LoadSound(working_directory+"\BGM\BGMBoss1.ogg",0);

globalvar BGM_BE;
BGM_BE=SS_LoadSound(working_directory+"\BGM\BGM_BE.ogg",0);

globalvar BGM_BEBoss;
BGM_BEBoss=SS_LoadSound(working_directory+"\BGM\BGM_BEBoss.ogg",0);

globalvar BGM_RedKey;
BGM_RedKey=SS_LoadSound(working_directory+"\BGM\BGM_RedKey.ogg",0);

globalvar BGM_BubbleStageSelection;
BGM_BubbleStageSelection=SS_LoadSound(working_directory+"\BGM\BGM_BubbleStageSelection.ogg",0);

globalvar BGM_BubbleStage;
BGM_BubbleStage=SS_LoadSound(working_directory+"\BGM\BGM_BubbleStage.ogg",0);

//globalvar BGM_GD01;
//BGM_GD01 = SS_LoadSound(working_directory+"\BGM\BGM_GD01.ogg",0);

globalvar BGM_JKStage;
BGM_JKStage=SS_LoadSound(working_directory+"\BGM\BGM_JKStage.ogg",0);

globalvar BGM_JKStageSelection;
BGM_JKStageSelection=SS_LoadSound(working_directory+"\BGM\BGM_JKStageSelection.ogg",0);

globalvar BGM_FloorStage;
BGM_FloorStage=SS_LoadSound(working_directory+"\BGM\BGM_FloorStage.ogg",0);

globalvar BGM_MMMFingers;
BGM_MMMFingers=SS_LoadSound(working_directory+"\BGM\BGM_MMMFingers.ogg",0);

globalvar BGM11To15F;
BGM11To15F=SS_LoadSound(working_directory+"\BGM\BGM11-15F.ogg",0);

globalvar BGMFaShiLiu;
BGMFaShiLiu=SS_LoadSound(working_directory+"\BGM\BGM_FAShiLiu.ogg",0);

globalvar BGMDracula;
BGMDracula=SS_LoadSound(working_directory+"\BGM\BGM_Dracula.ogg",0);

globalvar BGM_Burning;
BGM_Burning=SS_LoadSound(working_directory+"\BGM\BGM_Burning.ogg",0);

globalvar BGM_Freezing;
BGM_Freezing=SS_LoadSound(working_directory+"\BGM\BGM_Freezing.ogg",0);

globalvar BGM_RenalTreasure;
BGM_RenalTreasure=SS_LoadSound(working_directory+"\BGM\BGM_RenalTreasure.ogg",0);

globalvar BGM_FairyTail;
BGM_FairyTail=SS_LoadSound(working_directory+"\BGM\BGM_FairyTail.ogg",0);

globalvar BGM_Finals;
BGM_Finals=SS_LoadSound(working_directory+"\BGM\BGM_Finals.ogg",0);

globalvar currentBGM;
currentBGM = BGM_1;

