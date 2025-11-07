//transition_kind = 21;
//transition_steps = 100;
global.koala = 40000;
if(!global.achievements[98])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 98;
    global.achievements[98] = 1;
}
room_goto(rStatistics);

