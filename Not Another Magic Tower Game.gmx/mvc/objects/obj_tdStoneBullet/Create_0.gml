action_inherited();
vGap = player.y - y;
hspeed = RangeClamp((player.x - x) / 80, 3, 10);
gravity = 0.2;
time = (player.x - x) / hspeed;

vspeed = (vGap - 0.5 * gravity * sqr(time))/time;

