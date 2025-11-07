key.onHold = false;
key.onBoom = true;
key.onSmash = false;
key.onRun = false;
key.direction = point_direction(key.x, key.y, player.x, player.y);
key.speed = 25;
sound_loop(sndBoomerang);
alarm[4] = 80;

