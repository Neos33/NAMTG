if(global.currentFloor == 14)
{
    global.currentFloor -= 2;
}
else
{
    global.currentFloor -= 1;
}
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
player.visible = false;
//transition_steps = 50;
//transition_kind = 17;
event_inherited();

