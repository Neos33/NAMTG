startAngle1 = 90;
angSpd1 = -7;
startAngle2 = 0;
event_inherited();
with(obj_dsSpike)
{
    image_index = yellowIndex;
}
with(obj_darkSummoner_combat)
{
    targetX = 400;
    targetY = 128;
    move = true;
}


start = false;
t = 0;
times = 0;

