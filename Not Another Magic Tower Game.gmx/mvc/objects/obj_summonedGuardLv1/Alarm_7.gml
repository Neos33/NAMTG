key.onSmash = false;
key.onBoom = true;
image_angle = 0;
if(y > 560)
{
    y = 560;
}
key.direction = point_direction(key.x, key.y, player.x, player.y);
key.speed = 30;
sound_loop(sndBoomerang);
alarm[10] = 120;

