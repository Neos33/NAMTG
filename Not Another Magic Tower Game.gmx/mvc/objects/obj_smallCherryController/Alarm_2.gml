with(obj_smallGrayCherry)
{
    sub = instance_create(x, y, obj_smallGrayCherry_target);
    sub.targetX = x + 260;
    sub.targetY = y;
    sub.ind = ind;
    sub.spd = 6;
}
alarm[3] = 105;
alarm[11] = 50;

