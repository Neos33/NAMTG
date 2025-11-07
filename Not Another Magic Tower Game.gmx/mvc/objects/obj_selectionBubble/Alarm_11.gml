if(ind >= 0)
{
    if(ind > global.currentBubbleStage || obj_bubbleStageController.totalStars < obj_bubbleStageController.stageLimit[ind])
    {
        lock = true;
        pending = true;
        lvLock = instance_create(x,y,obj_extraLevelLock);
        lvLock.limit = obj_bubbleStageController.stageLimit[ind];
        lvLock.current = obj_bubbleStageController.totalStars;
    }
}

