global.currentFloor -= 1;
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
event_inherited();

