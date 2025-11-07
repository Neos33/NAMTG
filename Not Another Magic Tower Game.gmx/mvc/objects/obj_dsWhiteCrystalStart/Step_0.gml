var r = obj_dsWhiteController.r;
var angle = obj_dsWhiteController.angle;
var scale = r/200 *2 + 1;
var alpha = 1-r/200;
image_xscale = scale;
image_yscale = scale;
image_alpha = alpha*0.8;
x = obj_darkSummoner_combat.x + lengthdir_x(r, angle + startAngle);
y = obj_darkSummoner_combat.y + lengthdir_y(r, angle + startAngle);

