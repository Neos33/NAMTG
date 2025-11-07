if(room != ExtraBubbleBonus)
{
    if(global.bubbleStageStar[global.stageIndex] < obj_bubbleSingleStageController.starNum)
    {
     global.bubbleStageStar[global.stageIndex] = obj_bubbleSingleStageController.starNum;
    }
    
    if(global.stageIndex == global.currentBubbleStage)
    {
        global.currentBubbleStage += 1;
    }
    saveExtra();
}
//transition_kind = 102;
//transition_steps = 80;
room_goto(ExtraBubbleStages);


