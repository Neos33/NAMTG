if(room == rFaroPhase2)
{
    black = instance_create(0,0,obj_faroBlack);
    black.steps = 40;
    instance_create(0,0,obj_faroPhase2Controller);
}

