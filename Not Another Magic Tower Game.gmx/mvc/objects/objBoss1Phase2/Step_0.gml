timer+=1;
x=xstart+250*sin(timer/26);
y=ystart-15+15*cos(timer/26);
image_xscale=-sign(x-xprevious);
if !player_is_alive()
{
    timeline_running = 0;
    alarm[0] = 0;
    alarm[1] = 0;
}

if(!instance_exists(obj_corazone_combat)) instance_destroy();
image_alpha = obj_corazone_combat.image_alpha;

