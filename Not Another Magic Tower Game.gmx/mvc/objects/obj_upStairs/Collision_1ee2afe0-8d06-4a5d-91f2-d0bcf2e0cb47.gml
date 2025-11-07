if(global.currentFloor == 12)
{
    global.currentFloor += 2;
}
else
{
    global.currentFloor += 1;
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
//transition_steps = 50;
//transition_kind = 16;
player.visible = false;
if(toTE)
{
 global.koala = 20000;
}
event_inherited();

