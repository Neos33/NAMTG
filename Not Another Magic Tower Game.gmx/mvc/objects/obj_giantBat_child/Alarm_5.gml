angle = random_range(0,360);
dis = random_range(28,36);
var tx = x + dis * cos(degtorad(angle));
var ty = y - dis * sin(degtorad(angle));
var eff = instance_create(tx,ty,obj_giantBat_childGatherEnergy);
eff.parentX = x;
eff.parentY = y;
alarm[5] = 5;

