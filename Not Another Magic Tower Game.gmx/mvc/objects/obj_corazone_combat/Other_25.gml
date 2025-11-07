if(!global.achievements[81])
{
    var ch = instance_create(0,608,obj_achievements);
    ch.index = 81;
    global.achievements[81] = 1;
}
FMODInstanceStop(scrAudioGetID("BGM_Corazone"));

