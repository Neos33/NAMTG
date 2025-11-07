r += 3.5 + ((obj_beBossFinalPhaseController.p1R mod 10) - 5) * 0.3;
dir += 5;
x = 400 + r * cos(degtorad(dir));
y = 200 - r * sin(degtorad(dir));
alarm[3] = 1;

