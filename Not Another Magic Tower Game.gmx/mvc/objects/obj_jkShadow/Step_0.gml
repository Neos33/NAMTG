if(obj_stepRecord.start && obj_stepRecord.currentStep < obj_stepRecord.recordLength[ind])
{
    visible = true;
    x = obj_stepRecord.recordX[ind, obj_stepRecord.currentStep];
    y = obj_stepRecord.recordY[ind, obj_stepRecord.currentStep];
    sprite_index = obj_stepRecord.recordSpr[ind, obj_stepRecord.currentStep];
    image_index = obj_stepRecord.recordSprInd[ind, obj_stepRecord.currentStep];
    image_xscale = obj_stepRecord.recordXScale[ind, obj_stepRecord.currentStep];
}
else
{
    visible = false;
}

