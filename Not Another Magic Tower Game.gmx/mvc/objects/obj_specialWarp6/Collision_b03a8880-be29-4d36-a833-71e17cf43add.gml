with(other)
{
    instance_destroy();
}
for(i = 0; i < 6; i += 1)
{
    global.floorTrigger[i] = 0;
}
global.floorStageLevel = 1;
global.floorStageLife = 10;
global.isExtra = true;
room_goto(rExtraFloor1);

