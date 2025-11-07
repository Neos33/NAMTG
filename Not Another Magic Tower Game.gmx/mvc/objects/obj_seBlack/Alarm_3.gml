FMODInstanceStop(scrAudioGetID("BGM_SE"));
//transition_kind = 21;
//transition_steps = 50;
if(!global.achievements[98])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 98;
    global.achievements[98] = 1;
}
global.koala = 40000;
room_goto(rStatistics);

