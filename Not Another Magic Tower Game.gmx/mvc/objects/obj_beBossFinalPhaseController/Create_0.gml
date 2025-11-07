callSC = 0;
callSCTime = 0;
rspd = 0;
rSound = 0;

p1Count = 0;
b1 = 0;
b2 = 0;
b3 = 0;
finalEndCount = 0;
finalEnd = 0;

p1R = 0;

p2R1 = 0;
p2R2 = 0;
p2Dir1 = 0;
p2Dir2 = 0;
p2Rdir = 0;
p2Adir = 0;
p2RNum = 0;
p2ANum = 0;
p2Start = 0;

totalTime = 0;
timeAlpha = 0;
timeColor = c_white;
timeStart = false;
limitTime = 500;
centerX = 400;
centerY = 200;
phaseCount = 4;
phase = 0;
p1Count = 200;
p1R = 0;
roomSpd = 50;

p3 = instance_create(centerX + 96 * cos(degtorad(90)), centerY - 96 * sin(degtorad(90)), obj_beFinalPhase3);
p3.dir = 90;
p3.r = 96;
p1 = instance_create(centerX + 96 * cos(degtorad(210)), centerY - 96 * sin(degtorad(210)), obj_beFinalPhase1);
p1.dir = 210;
p1.r = 96;
p2 = instance_create(centerX + 96 * cos(degtorad(330)), centerY - 96 * sin(degtorad(330)), obj_beFinalPhase2);
p2.dir = 330;
p2.r = 96;
sound_fix(snd_touhou_1UP);
alarm[11] = 1;




