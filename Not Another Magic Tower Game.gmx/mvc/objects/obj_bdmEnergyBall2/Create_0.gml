action_inherited();
image_index = 5;
image_speed = 0;
image_xscale = 0.5;
image_yscale = 0.5;

scale = 0;

child = instance_create(x,y,obj_bdmEnergyBallShadow);
child.ind = 9;
child.scale = 0.5;
child.image_xscale = child.ind * 0.1 * scale;
child.image_yscale = child.ind * 0.1 * scale;
child.depth = -child.ind;
child.image_alpha = child.ind * 0.08 + 0.2;
with(child)
{
    event_user(0);
}
isStable = true;


px = 0;
py = 0;

