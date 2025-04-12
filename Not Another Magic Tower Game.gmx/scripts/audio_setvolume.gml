var _VolPer;

var _music = argument[0];
/*switch(_music)
{
    case "BGM_Luka":
    case "BGM_Gallery":
         _VolPer = 0.95;
         break;
    case "BGM_Burning":
    case "BGM11To15F":
    case "BGM_JKStage":
    case "BGM_JKStageSelection":
    case "BGM_Secret2":
    case "BGM_BubbleStageSelection":
         _VolPer = 1.05;
         break;
    case "BGM_1":
    case "BGM_DecisiveBattle":
    case "BGM_Diamante":
    case "BGM_Trebole":
    case "BGM_Corazone":
    case "BGM_FairyTail":
    case "BGM_RenalTreasure":
    case "BGM_BubbleStage":
    case "BGM_Pica":
    case "BGM_Faro":
    case "BGM_SE":
    case "BGM_Corridor":
         _VolPer = 1.1;
         break;
    case "BGMDracula":
    case "BGM_RedKey":
    case "BGMFaShiLiu":
    case "BGM_DemonLead":
    case "SE_HeedMyCall":
    case "BGMB1F":
    case "BGM_FloorStage":
    case "BGMBoss1":
    case "BGM_GE":
    case "BGM_MMMFingers":
    case "BGM_Fapple":
         _VolPer = 1.15;
         break;
    case "BGMsupfasf":
         _VolPer = 1.5;
         break;
    default:
         _VolPer = 1;
         break;
}*/
_VolPer = 1;
// SS_SetSoundVol(argument0,2000+80*global.audio_music_volume*_VolPer);
FMODInstanceSetVolume(_music, global.audio_music_volume/100*_VolPer);
//FMODInstanceSetVolume(argument0,1);
/*show_debug_message(global.audio_music_volume/100*_VolPer);
show_debug_message("Que onda?");
