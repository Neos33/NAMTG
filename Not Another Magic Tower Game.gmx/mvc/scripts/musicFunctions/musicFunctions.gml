//play music -- full edition

switch(room) {
    case rTitle:
    case rMenu:
    case rSelectStage:
        if filePlaying != 1 {
            filePlaying = 1;
        }   
        break;
    case rDebug:
    case rStage01:
        if filePlaying != 2 {
            filePlaying = 2;
        }   
        break;
    default:
        if filePlaying != 0 {
            filePlaying = 0;
        }   
        break;
}

/*
// play music in each room
if(getBossRoom()){
    audio_playmusic(BGM_Null);
    exit;
}
switch(room) {
    case rTitle:
    case rMenu:
    case rOptions:
    case rSelectStage:
        //indicates that BGM_Title should be played in the 4 rooms above
        audio_loopmusic(BGM_Title);
        break;
    case rHub:
    case rTraps:
    case rSlopes:
        audio_loopmusic(BGM_1);
        break;
    //add your code here
    default:
        audio_playmusic(BGM_Null);
}


/*
//play music -- partial edition
switch room{
    case rTitle:
    case rMenu:
    case rSelectStage:
        if filePlaying != 1{
            filePlaying = 1; 
            if SS_IsHandleValid(curMusic){
                SS_FreeSound(curMusic);
            } 
            curMusic = SS_LoadSound('BGM/Title.ogg',0);
            audio_loopmusic(curMusic);
        } 
        break;
    case rDebug:
    case rStage01:
        if filePlaying != 2{
            filePlaying = 2; 
            if SS_IsHandleValid(curMusic){
                SS_FreeSound(curMusic);
            } 
            curMusic = SS_LoadSound('BGM/001.ogg',0);
            audio_loopmusic(curMusic);
        } 
        break;
    default:
        if filePlaying != 0 {
            filePlaying = 0;
            if SS_IsHandleValid(curMusic){
                SS_FreeSound(curMusic);
            }
            curMusic = SS_LoadSound('BGM/Null.ogg',0);
            audio_playmusic(curMusic);
        }
        break;       
}
