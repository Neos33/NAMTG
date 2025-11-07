with(player)
    instance_destroy();
if(global.floorStageLevel < 31)
{
    global.floorStageLevel += 1;
    //transition_steps = 30;
    //transition_kind = 21;
    //execute_string("room_goto(rExtraFloor" + string(global.floorStageLevel) + ")");
    room_goto(asset_get_index("rExtraFloor" + string(global.floorStageLevel)))
}
else
{
    //transition_steps = 50;
    //transition_kind = 21;
    room_goto(rExtraFloorBonus);
}

