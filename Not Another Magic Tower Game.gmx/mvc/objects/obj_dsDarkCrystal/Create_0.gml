dontDraw = true;
interval = 3;
event_inherited();
image_alpha = 0.4;
with(obj_dsSpike)
{
    image_blend = c_black;
}
with(obj_darkSummoner_combat)
{
    targetX = 400;
    targetY = 128;
    move = true;
}
alarm[0] = 50;
alarm[1] = 200;
alarm[2] = 350;
alarm[3] = 500;
alarm[4] = 750;
alarm[5] = 50;
dark = true;

alarm[11] = 50;


phase = 0;

boom = false;
ach = false;

