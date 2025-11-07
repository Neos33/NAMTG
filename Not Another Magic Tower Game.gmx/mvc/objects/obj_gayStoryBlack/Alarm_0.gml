if(!global.achievements[97])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 97;
    global.achievements[97] = true;
}
//transition_kind = 21;
//transition_steps = 50;
room_goto(rTitle);

