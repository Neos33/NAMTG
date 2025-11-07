action_inherited();
image_speed = 0;

speed = 4 + obj_beBossFinalPhaseController.rspd * random_range(0.4,0.6);
if(speed > 12)
{
    speed = 12;
}
direction = random_range(0,359);
//alarm[3] = 10;

