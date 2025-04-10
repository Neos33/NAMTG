///initializing music at the beginning of the game
//initialize fmod system
LoadFMOD();
FMODinit(100,0);

global.music_directory = "BGM\";
global.stream_music = 0;

//indicates that no music will be playing in the room
//DO NOT DELETE THIS ONE
globalvar BGM_Null;
BGM_Null=FMODSoundAdd(global.music_directory+"Null.ogg",0,0);
//current music, set it to BGM_Null for default value
globalvar curMusic;
curMusic = -1;
globalvar curMusicID;
curMusicID = BGM_Null;
globalvar deathMusic;
deathMusic = -1;
//the death sound, the volume of which is adjusted by the global sound volume
/*globalvar SE_Death;
SE_Death=music_load("death.ogg");

globalvar BGM_Title;
BGM_Title=music_load("001.ogg");

globalvar BGM_1;
BGM_1=music_load("002.ogg");

globalvar BGM_BOSS1;
BGM_BOSS1=music_load("101.ogg");

globalvar BGM_BOSS2;
BGM_BOSS2=music_load("102.ogg");
*/
//add your code here



//globalvar curMusic,filePlaying; //current music, current music serial, ~~~

globalvar SE_Death;
SE_Death=music_load("Death.ogg");

// play music full edition
//globalvar BGM_Null;
//BGM_Null=music_load("Null.ogg",0);

//globalvar BGM_Title;
//BGM_Title=music_load("BGM1.ogg",0);

globalvar BGM_1;
BGM_1=music_load("BGM1.ogg");

globalvar BGM1To10F;
BGM1To10F=music_load("BGM1-10F.ogg");

globalvar BGMB1F;
BGMB1F = music_load("BGMB1F.ogg");

globalvar BGMSecret1;
BGMSecret1=music_load("BGM_Secret1.ogg");

globalvar BGM_Secret2;
BGM_Secret2 = music_load("BGM_Secret2.ogg");

globalvar BGMsupfasf;
BGMsupfasf=music_load("BGM_battle1.ogg");

globalvar BGMBoss1; 
BGMBoss1=music_load("BGMBoss1.ogg");

globalvar BGM_BE;
BGM_BE=music_load("BGM_BE.ogg");

globalvar BGM_BEBoss;
BGM_BEBoss=music_load("BGM_BEBoss.ogg");

globalvar BGM_RedKey;
BGM_RedKey=music_load("BGM_RedKey.ogg");

globalvar BGM_BubbleStageSelection;
BGM_BubbleStageSelection=music_load("BGM_BubbleStageSelection.ogg");

globalvar BGM_BubbleStage;
BGM_BubbleStage=music_load("BGM_BubbleStage.ogg");

//globalvar BGM_GD01;
//BGM_GD01 = music_load("BGM_GD01.ogg",0);

globalvar BGM_JKStage;
BGM_JKStage=music_load("BGM_JKStage.ogg");

globalvar BGM_JKStageSelection;
BGM_JKStageSelection=music_load("BGM_JKStageSelection.ogg");

globalvar BGM_FloorStage;
BGM_FloorStage=music_load("BGM_FloorStage.ogg");

globalvar BGM_MMMFingers;
BGM_MMMFingers=music_load("BGM_MMMFingers.ogg");

globalvar BGM11To15F;
BGM11To15F=music_load("BGM11-15F.ogg");

globalvar BGMFaShiLiu;
BGMFaShiLiu=music_load("BGM_FAShiLiu.ogg");

globalvar BGMDracula;
BGMDracula=music_load("BGM_Dracula.ogg");

globalvar BGM_Burning;
BGM_Burning=music_load("BGM_Burning.ogg");

globalvar BGM_Freezing;
BGM_Freezing=music_load("BGM_Freezing.ogg");

globalvar BGM_RenalTreasure;
BGM_RenalTreasure=music_load("BGM_RenalTreasure.ogg");

globalvar BGM_FairyTail;
BGM_FairyTail=music_load("BGM_FairyTail.ogg");

globalvar BGM_Finals;
BGM_Finals=music_load("BGM_Finals.ogg");


globalvar BGM_DemonLead;
BGM_DemonLead = music_load("BGM_DemonLead.ogg");

globalvar currentBGM;
currentBGM = BGM_1;

