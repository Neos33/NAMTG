bpm=140;
beat=4;
timeline_speed=(beat*bpm)/(50*60)
//instance_create(-500, -500, obj_light_combat);


if(global.GalleryBossFight)
{
    recoveryCountDown = 100;
}
else
{
    recoveryCountDown = 10;
}

action_timeline_set(tlYaranaika, 1, 0, 0);
