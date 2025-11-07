action_inherited();
image_speed = 1/4;
direction = random_range(0,360);
speed = random_range(5,6);

scale = 0;

child = instance_create(x,y,obj_bdmEnergyBall3Shadow);
child.ind = 9;
child.scale = 1;
child.image_xscale = child.ind * 0.1 * scale;
child.image_yscale = child.ind * 0.1 * scale;
child.depth = -child.ind;
child.image_alpha = child.ind * 0.08 + 0.2;
with(child)
{
    event_user(0);
}
isStable = true;
alarm[3] = 500;
alarm[4] = 1;
start = false;
sound_fix(snd_touhou_twinkle2);


isEnd = false;
px = 0;
py = 0;

