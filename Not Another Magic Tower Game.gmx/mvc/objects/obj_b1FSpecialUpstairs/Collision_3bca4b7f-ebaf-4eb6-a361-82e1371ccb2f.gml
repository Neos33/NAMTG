global.currentFloor += 1;
maxfloor = global.maxFloor;
minfloor = global.minFloor;
if(global.currentFloor > global.maxFloor)
{
    global.maxFloor = global.currentFloor;
}
if(global.currentFloor < global.minFloor)
{
    global.minFloor = global.currentFloor;
}
//transition_kind = 21;
//transition_steps = 150;
if(!global.story[21] && !left && room != rB2F)
{
    global.story[21] = true;
    player.visible = false;
    bow.visible = false;
    player.frozen = true;
}

event_inherited();

