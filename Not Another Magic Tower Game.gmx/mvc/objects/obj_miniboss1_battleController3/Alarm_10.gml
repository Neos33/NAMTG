kappa1.alarm[4] = 0;
kappa2.alarm[4] = 0;
with(obj_minibossKappa)
{
 rBulletCoolDown = 0;
}
kappa1.image_angle = 0;
kappa2.image_angle = 0;
kappa1.targetX = obj_miniBossGay.x - 48;
kappa1.targetY = kappa1.y;
kappa1.kissGay = true;
kappa1.alarm[1] = 1;
kappa1.spd = 10;
kappa2.targetX = obj_miniBossGay.x + 48;
kappa2.targetY = kappa2.y;
kappa2.spd = 10;
kappa2.alarm[1] = 1;

