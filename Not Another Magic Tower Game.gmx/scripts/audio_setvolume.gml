var _VolPer;
/*switch(argument0)
{
    case global.BGM_Luka:
    case global.BGM_Gallery:
         _VolPer = 0.95;
         break;
    case global.BGM_Burning:
    case global.BGM11To15F:
    case global.BGM_JKStage:
    case global.BGM_JKStageSelection:
    case global.BGM_Secret2:
    case global.BGM_BubbleStageSelection:
         _VolPer = 1.05;
         break;
    case global.BGM_1:
    case global.BGM_DecisiveBattle:
    case global.BGM_Diamante:
    case global.BGM_Trebole:
    case global.BGM_Corazone:
    case global.BGM_FairyTail:
    case global.BGM_RenalTreasure:
    case global.BGM_BubbleStage:
    case global.BGM_Pica:
    case global.BGM_Faro:
    case global.BGM_SE:
    case global.BGM_Corridor:
         _VolPer = 1.1;
         break;
    case global.BGMDracula:
    case global.BGM_RedKey:
    case global.BGMFaShiLiu:
    case global.BGM_DemonLead:
    case global.SE_HeedMyCall:
    case global.BGMB1F:
    case global.BGM_FloorStage:
    case global.BGMBoss1:
    case global.BGM_GE:
    case global.BGM_MMMFingers:
    case global.BGM_Fapple:
         _VolPer = 1.15;
         break;
    case global.BGMsupfasf:
         _VolPer = 1.5;
         break;
    default:
         _VolPer = 1;
         break;
}*/
_VolPer = 1;
// SS_SetSoundVol(argument0,2000+80*global.audio_music_volume*_VolPer);
FMODInstanceSetVolume(argument0,global.audio_music_volume/100*_VolPer);
//FMODInstanceSetVolume(argument0,1);
/*show_debug_message(global.audio_music_volume/100*_VolPer);
show_debug_message("Que onda?");
