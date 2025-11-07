image_xscale = scale*global.shotEnergy;
image_yscale = scale*global.shotEnergy;
x = player.x + 11 * sign(player.image_xscale);
y = player.y - 3;

if(!player_is_alive())
{
    instance_destroy();
}

