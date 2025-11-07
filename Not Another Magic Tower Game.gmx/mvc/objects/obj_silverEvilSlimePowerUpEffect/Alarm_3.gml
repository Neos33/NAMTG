if(image_alpha > 0)
{
    image_alpha -= 0.01;
    alarm[3] = 1;
}
else
{
    obj_silverEvilSlimeMeditationEffect.alarm[3] = 1;
    obj_silverEvilSlimePhychcController.alarm[1] = 1;
    instance_destroy();
}

