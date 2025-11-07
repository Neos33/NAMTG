
targetX = 0;
comboXScale = 0;

if(obj_asQTEPlayer.x > 400)
{
    targetX = RangeClamp(obj_asQTEPlayer.x  + 128, 0, 800);
    comboXScale = 1;
}
else
{
    targetX = RangeClamp(obj_asQTEPlayer.x  - 128, 0, 800);
    comboXScale = -1;
}
targetY = obj_asQTEPlayer.y;
alpha = 0;
draw = true;
alarm[0] = 1;
//instance_create(0,0,obj_asComboViewController);
//obj_combatController.dontDraw = true;

