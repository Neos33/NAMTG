//instance_create(0,0,flashWhite);
//audio_playsound(sndgras);
if !instance_exists(objBoss1Phase3)
{
    instance_create(400,160,objBoss1Phase3);
//    audio_playsound(sndAppear);
}
with objBossInHole
{
    instance_create(x,y,objBoss1Disappear);
    visible=0;
}
instance_destroy();

