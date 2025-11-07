image_xscale = 0.1;
image_yscale = 0.1;
alarm[0] = 1;
with(obj_osuCountdown)
{
    event_user(0);
}
count = 0;
angle = 0;
r = 10;
ammount = 6;
stepAngle = 360/ammount;
subAngle = stepAngle / (ammount - 2);
subCount = ammount - 2;
event_user(0);
alarm[11] = 2;

