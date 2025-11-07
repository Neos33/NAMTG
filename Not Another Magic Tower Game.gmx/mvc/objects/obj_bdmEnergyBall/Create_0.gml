action_inherited();
image_index = 5;
image_speed = 0;
targetX = random_range(96, room_width - 96);
targetY = random_range(64, room_height - 64);
path = path_add();
path_set_precision(path,8);
path_set_closed(path,false);
path_set_kind(path,1);
path_add_point(path,x,y,100);
path_add_point(path,(targetX + x) / 2, RangeClamp(y - random_range(32, 304),0, targetY - 32),100);
path_add_point(path, targetX, targetY, 100);


scale = 0;

child = instance_create(x,y,obj_bdmEnergyBallShadow);
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



px = 0;
py = 0;

path_start(path,5,0,1);
isStable = true;
sound_fix(snd_touhou_twinkle2);

