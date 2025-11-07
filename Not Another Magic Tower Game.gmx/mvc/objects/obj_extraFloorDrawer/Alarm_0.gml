if(global.floorStageLife > 0)
{
    global.floorStageLife -= 1;
}
else
{
    //transition_kind = 21;
    //transition_steps = 80;
    player.x = 64 + 17;
    player.y = 512 + 23;
    room_goto(rExtraFloorBonus);
}

